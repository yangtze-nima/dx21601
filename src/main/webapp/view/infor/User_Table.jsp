<%--
  Created by IntelliJ IDEA.
  User: DXnima
  Date: 2020/1/7
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="card">
    <div class="card-header ">
        <h4 class="card-title">班级所有学生信息</h4>
        <p class="card-category">Users Table</p>
    </div>
    <div class="card-body">
        <table class="table table-head-bg-success table-striped table-hover" id="main_student_table">
            <thead>
            <tr>
                <th scope="col">编号</th>
                <th scope="col">姓名</th>
                <th scope="col">学号</th>
                <th scope="col">性别</th>
                <th scope="col">手机号</th>
                <th scope="col">出生日期</th>
                <th scope="col">宿舍号</th>
                <th scope="col">编辑</th>
            </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>
</div>
<script>
    $(function () {
        allStudent();//获取所有学生student信息
    });
</script>