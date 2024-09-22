$(function () {
	$("#book_barcode").validatebox({
		required : true, 
		missingMessage : '请输入图书条形码',
	});

	$("#book_bookName").validatebox({
		required : true, 
		missingMessage : '请输入图书名称',
	});

	$("#book_bookType_bookTypeId").combobox({
	    url:'BookType/BookType_ajaxQueryAllBookType.action',
	    valueField: "bookTypeId",
	    textField: "bookTypeName",
	    panelHeight: "auto",
        editable: false, //不允许手动输入
        required : true,
        onLoadSuccess: function () { //数据加载完毕事件
            var data = $("#book_bookType_bookTypeId").combobox("getData"); 
            if (data.length > 0) {
                $("#book_bookType_bookTypeId").combobox("select", data[0].bookTypeId);
            }
        }
	});
	$("#book_price").validatebox({
		required : true,
		validType : "number",
		missingMessage : '请输入图书价格',
		invalidMessage : '图书价格输入不对',
	});

	$("#book_count").validatebox({
		required : true,
		validType : "integer",
		missingMessage : '请输入库存',
		invalidMessage : '库存输入不对',
	});

	$("#book_publishDate").datebox({
	    required : true, 
	    showSeconds: true,
	    editable: false
	});

	//单击添加按钮
	$("#bookAddButton").click(function () {
		//验证表单 
		if(!$("#bookAddForm").form("validate")) {
			$.messager.alert("错误提示","你输入的信息还有错误！","warning");
		} else {
			$("#bookAddForm").form({
			    url:"Book/Book_ajaxAddBook.action",
			    onSubmit: function(){
					if($("#bookAddForm").form("validate"))  { 
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
                    //此处data={"Success":true}是字符串
                	var obj = jQuery.parseJSON(data); 
                    if(obj.success){ 
                        $.messager.alert("消息","保存成功！");
                        $("#bookAddForm").form("clear");
                    }else{
                        $.messager.alert("消息",obj.message);
                    }
			    }
			});
			//提交表单
			$("#bookAddForm").submit();
		}
	});

	//单击清空按钮
	$("#bookClearButton").click(function () { 
		$("#bookAddForm").form("clear"); 
	});
});
