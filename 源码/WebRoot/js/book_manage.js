var book_manage_tool = null; 
$(function () { 
	initBookManageTool(); //建立Book管理对象
	book_manage_tool.init(); //如果需要通过下拉框查询，首先初始化下拉框的值
	$("#book_manage").datagrid({
		url : 'Book/Book_ajaxQueryBook.action',
		fit : true,
		fitColumns : false,
		striped : true,
		rownumbers : true,
		border : false,
		pagination : true,
		pageSize : 5,
		pageList : [5, 10, 15, 20, 25],
		pageNumber : 1,
		sortName : "barcode",
		sortOrder : "desc",
		toolbar : "#book_manage_tool",
		columns : [[
			{
				field : "barcode",
				title : "图书条形码",
				width : 140,
			},
			{
				field : "bookName",
				title : "图书名称",
				width : 140,
			},
			{
				field : "bookType",
				title : "图书所在类别",
				width : 140,
			},
			{
				field : "price",
				title : "图书价格",
				width : 70,
			},
			{
				field : "count",
				title : "库存",
				width : 70,
			},
			{
				field : "publish",
				title : "出版社",
				width : 140,
			},
			{
				field : "publishDate",
				title : "出版日期",
				width : 140,
			},
			{
				field : "photoBook",
				title : "图书图片",
				width : "70px",
				height: "65px",
				formatter: function(val,row) {
					return "<img src='" + val + "' width='65px' height='55px' />";
				}
 			},
		]],
	});

	$("#bookEditDiv").dialog({
		title : "修改管理",
		top: "50px",
		width : 700,
		height : 515,
		modal : true,
		closed : true,
		iconCls : "icon-edit-new",
		buttons : [{
			text : "提交",
			iconCls : "icon-edit-new",
			handler : function () {
				if ($("#bookEditForm").form("validate")) {
					//验证表单 
					if(!$("#bookEditForm").form("validate")) {
						$.messager.alert("错误提示","你输入的信息还有错误！","warning");
					} else {
						$("#bookEditForm").form({
						    url:"Book/Book_ajaxModifyBook.action",
						    onSubmit: function(){
								if($("#bookEditForm").form("validate"))  {
				                	$.messager.progress({
										text : "正在提交数据中...",
									});
				                	return true;
				                } else { 
				                    return false; 
				                }
						    },
						    success:function(data){
						    	$.messager.progress("close");
						    	console.log(data);
			                	var obj = jQuery.parseJSON(data);
			                    if(obj.success){
			                        $.messager.alert("消息","信息修改成功！");
			                        $("#bookEditDiv").dialog("close");
			                        book_manage_tool.reload();
			                    }else{
			                        $.messager.alert("消息",obj.message);
			                    } 
						    }
						});
						//提交表单
						$("#bookEditForm").submit();
					}
				}
			},
		},{
			text : "取消",
			iconCls : "icon-redo",
			handler : function () {
				$("#bookEditDiv").dialog("close");
				$("#bookEditForm").form("reset"); 
			},
		}],
	});
});

function initBookManageTool() {
	book_manage_tool = {
		init: function() {
			$.ajax({
				url : "BookType/BookType_ajaxQueryAllBookType.action",
				type : "post",
				success : function (data, response, status) {
					$("#bookType_bookTypeId_query").combobox({ 
					    valueField:"bookTypeId",
					    textField:"bookTypeName",
					    panelHeight: "auto",
				        editable: false, //不允许手动输入 
					});
					data.splice(0,0,{bookTypeId:0,bookTypeName:"不限制"});
					$("#bookType_bookTypeId_query").combobox("loadData",data); 
				}
			});
		},
		reload : function () {
			$("#book_manage").datagrid("reload");
		},
		redo : function () {
			$("#book_manage").datagrid("unselectAll");
		},
		search: function() {
			var queryParams = $("#book_manage").datagrid("options").queryParams;
			queryParams["barcode"] = $("#barcode").val();
			queryParams["bookName"] = $("#bookName").val();
			queryParams["bookType.bookTypeId"] = $("#bookType_bookTypeId_query").combobox("getValue");
			queryParams["publishDate"] = $("#publishDate").datebox("getValue"); 
			$("#book_manage").datagrid("options").queryParams=queryParams; 
			$("#book_manage").datagrid("load");
		},
		exportExcel: function() {
			$("#bookQueryForm").form({
			    url:"Book/Book_queryBookOutputToExcel.action",
			});
			//提交表单
			$("#bookQueryForm").submit();
		},
		remove : function () {
			var rows = $("#book_manage").datagrid("getSelections");
			if (rows.length > 0) {
				$.messager.confirm("确定操作", "您正在要删除所选的记录吗？", function (flag) {
					if (flag) {
						var barcodes = [];
						for (var i = 0; i < rows.length; i ++) {
							barcodes.push(rows[i].barcode);
						}
						$.ajax({
							type : "POST",
							url : "Book/Book_ajaxDeleteBook.action",
							data : {
								barcodes : barcodes.join(","),
							},
							beforeSend : function () {
								$("#book_manage").datagrid("loading");
							},
							success : function (data) {
								if (data.success) {
									$("#book_manage").datagrid("loaded");
									$("#book_manage").datagrid("load");
									$("#book_manage").datagrid("unselectAll");
									$.messager.show({
										title : "提示",
										msg : data.message
									});
								}
							},
						});
					}
				});
			} else {
				$.messager.alert("提示", "请选择要删除的记录！", "info");
			}
		},
		edit : function () {
			var rows = $("#book_manage").datagrid("getSelections");
			if (rows.length > 1) {
				$.messager.alert("警告操作！", "编辑记录只能选定一条数据！", "warning");
			} else if (rows.length == 1) {
				$.ajax({
					url : "Book/Book_ajaxModifyBookQuery.action",
					type : "post",
					data : {
						barcode : rows[0].barcode,
					},
					beforeSend : function () {
						$.messager.progress({
							text : "正在获取中...",
						});
					},
					success : function (book, response, status) {
						$.messager.progress("close");
						if (book) { 
							$("#bookEditDiv").dialog("open");
							$("#book_barcode_edit").val(book.barcode);
							$("#book_barcode_edit").validatebox({
								required : true,
								missingMessage : "请输入图书条形码",
								editable: false
							});
							$("#book_bookName_edit").val(book.bookName);
							$("#book_bookName_edit").validatebox({
								required : true,
								missingMessage : "请输入图书名称",
							});
							$("#book_bookType_bookTypeId_edit").combobox({
								url:"BookType/BookType_ajaxQueryAllBookType.action",
							    valueField:"bookTypeId",
							    textField:"bookTypeName",
							    panelHeight: "auto",
						        editable: false, //不允许手动输入 
						        onLoadSuccess: function () { //数据加载完毕事件
									$("#book_bookType_bookTypeId_edit").combobox("select", book.bookType);
								}
							});
							$("#book_price_edit").val(book.price);
							$("#book_price_edit").validatebox({
								required : true,
								validType : "number",
								missingMessage : "请输入图书价格",
								invalidMessage : "图书价格输入不对",
							});
							$("#book_count_edit").val(book.count);
							$("#book_count_edit").validatebox({
								required : true,
								validType : "integer",
								missingMessage : "请输入库存",
								invalidMessage : "库存输入不对",
							});
							$("#book_publish_edit").val(book.publish);
							$("#book_publishDate_edit").datebox({
								value: book.publishDate,
							    required: true,
							    showSeconds: true,
							});
							$("#book_photoBook").val(book.photoBook);
							$("#book_photoBookImg").attr("src", book.photoBook);
						} else {
							$.messager.alert("获取失败！", "未知错误导致失败，请重试！", "warning");
						}
					}
				});
			} else if (rows.length == 0) {
				$.messager.alert("警告操作！", "编辑记录至少选定一条数据！", "warning");
			}
		},
	};
}
