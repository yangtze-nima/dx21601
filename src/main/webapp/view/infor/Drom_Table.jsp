<%--
  Created by IntelliJ IDEA.
  User: DXnima
  Date: 2020/1/7
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="card">
    <div class="card-header ">
        <h4 class="card-title">宿舍信息</h4>
        <p class="card-category">Drom Table</p>
    </div>
    <div class="card-body">
        <table class="table table-head-bg-success table-striped table-hover" id="main_drom_table">
            <thead>
            <tr>
                <th scope="col">编号</th>
                <th scope="col">宿舍号</th>
                <th scope="col">人数</th>
                <th scope="col">编辑</th>
            </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>
</div>
<script>
    $(function () {
        allDrom();//获取所有宿舍信息
    });
</script>