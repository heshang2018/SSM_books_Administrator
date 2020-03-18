
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post" >
        <%-- 出现的问题:我们提交了修改SQL请求  --%>
        <%-- 前端传递隐藏域 --%>
            <input type="hidden" name="bookID" value="${QBook.bookID}">
        <div class="form-group">
            <label for="bookName">书籍名称：</label>
            <input type="text" class="form-control" id="bookName" name="bookName" placeholder="书籍名称"  value="${QBook.bookName}" required>
        </div>
        <div class="form-group">
            <label for="bookCounts"> 书籍数量：</label>
            <input type="text" class="form-control" id="bookCounts" name="bookCounts" placeholder="书籍数量"  value="${QBook.bookCounts}" required>
        </div>
        <div class="form-group">
            <label for="detail"> 书籍描述：</label>
            <input type="text" class="form-control" id="detail" name="detail" placeholder="书籍详情" value="${QBook.detail}" required>
        </div>

        <div class="form-grroup">
            <input type="submit" class="form-control" value="修改">
        </div>
    </form>
</div>

</body>
</html>
