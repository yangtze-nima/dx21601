<%--
  Created by IntelliJ IDEA.
  User: DXnima
  Date: 2020/1/7
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="card">
    <div class="card-header ">
        <h4 class="card-title">所有同学住址信息：</h4>
        <p class="card-category">location Table</p>
    </div>
    <div class="card-body">
        <table class="table table-head-bg-success table-striped table-hover" id="main_hours_table">
            <thead>
            <tr>
                <th scope="col">编号</th>
                <th scope="col">姓名</th>
                <th scope="col">学号</th>
                <th scope="col">详细住址</th>
                <th scope="col">编辑</th>
            </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>
</div>
<script>
    $(function () {
        allHours();//获取所有Hours学生信息
    });
</script>