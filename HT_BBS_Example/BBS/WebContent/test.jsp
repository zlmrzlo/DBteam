<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head></head>
<title>Chapter 7</title>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script> -->

<style type="text/css">
    a:link {
        color: red;
        text-decoration: none;
    }

    a:visited {
        color: black;
        text-decoration: none;
    }

    a:hover {
        color: blue;
        text-decoration: underline;
    }
</style>
<style>
    * {
        margin: 0;
        padding: 0;
    }

    body {
        font-family: 'Helvetica', sans-serif;
    }

    li {
        list-style: none;
    }

    a {
        text-decoration: none;
    }
</style>
<!-- ��� -->
<style>
    #main_header {
        height: 60px;
        line-height: 60px;
        width: 1200px;
        text-align: center;


        background: rgb(202, 84, 5);
        color: white;
    }
</style>
<!-- �׺���̼� -->
<style>
    #main_gnb {
        overflow: hidden;
        background: rgb(48, 0, 0);
        width: 1200px;
        color: white;
    }

    #main_gnb>ul.left {
        overflow: hidden;
        float: left;
    }

    #main_gnb>ul.right {
        overflow: hidden;
        float: right;
    }

    #main_gnb>ul.left>li {
        float: left;
    }

    #main_gnb>ul.right>li {
        float: left;
    }

    /* a �±� ���� */

    #main_gnb a {
        display: block;
        padding: 10px 20px;
        color: white;
        font-weight: bold;
    }

    body {
        min-width: 1200px;
    }
</style>
<!-- ������ -->
<style>
    #wrap {
        overflow: hidden;
    }

    #wrap>#main_lnb {
        float: left;
        width: 200px;
    }

    #wrap>#content_wrap {
        float: left;
        padding: 10px;
        width: 980px;
        margin-right: -200px;

    }

    #wrap>#content_wrap>#content {
        padding-right: 200px;
    }
</style>
<!-- ���� ��� -->
<style>
    #wrap {
        width: 1200px;
        background: rgba(202, 84, 5, 0.712);
    }

    #main_lnb>ul>li>a {
        display: block;
        height: 40px;
        line-height: 40px;
        padding-left: 15px;
        color: white;
        font-weight: bold;
    }

    #main_lnb_bold {
        font-weight: bold;
        padding: 10px;
        font-size: 25px;
        text-align: center;
    }
</style>
<!-- ���� -->
<style>
    #content {
        background: white;
        border: 1px solid rgb(255, 255, 255);
    }

    article {
        padding: 20px;
    }
</style>
<!-- Ǫ�� -->
<style>
    #main_footer {
        position: relative;
        width: 1180px;
        left: 0%;
        text-align: right;
        padding: 10px;
        background: rgb(48, 0, 0);
        color: white;
    }

    #footer_photo {
        float: left;
    }
</style>
<style>
    #detail_list {
        overflow: hidden;
        padding: 10px;
        background: rgb(200, 206, 206);
        padding-bottom: 15px;
        border: 10px solid white;
    }

    #detail_list>ul {
        float: left;
        width: 800px;
    }

    #detail_list>ul>li {
        height: 20px;
        margin-top: 5px;
        padding: 3px 5px;
        color: rgb(0, 0, 0);

        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;

    }

    #detail_list>ul>li.header {
        padding-left: 15px;
    }

    #detail_list>ul>li.header>p {
        font-weight: bold;
        color: rgb(48, 0, 0);
    }

    #table, th, td {
        text-align: center;
        border: 1px solid black;
    }

    #tableset {
        padding: 20px;
    }
</style>
</head>

<body>
    <header id="main_header">
        <h1>
            <a href="http:/info.kw.ac.kr">KW Mini U-Campus</h1>
        </a>
    </header>
    <nav id="main_gnb">
        <ul class="left">
            <li>
                <a>���¿� 2016609043</a>
            </li>
        </ul>
        <ul class="right">
            <li>
                <a href="#">������б� Ȩ������</a>
            </li>
            <li>
                <a href="#">�α׾ƿ�</a>
            </li>
        </ul>
    </nav>
    <div id="wrap">
        <nav id="main_lnb">
            <ul>
                <li id="main_lnb_bold">
                    <a>������������</a>
                </li>
                <li>
                    <a href="#">�����ڷ��</a>
                </li>
                <li>
                    <a href="#">�������� ��ȸ</a>
                </li>
                <li>
                    <a href="#">������ ����</a>
                </li>
            </ul>

        </nav>
        <div id="content_wrap">

            <div id="detail_list">
                <h2>��������</h2>
                <div id="tableset">
                    <table border="table1" width="800px" height="200px">
                        <thead>
                            <th>Name</th>
                            <th>Time</th>
                            <th>Board</th>
                            <th>������</th>
                        </thead>
                        <!-- <tr>
                            <td>�����ͺ��̽�</td>
                            <td rowspan>ȭ 1����(����204) , �� 2����(����204)</td>
                            <td rowspan>���ǽ� GO</td>
                            <td rowspan>������</td>
                        </tr>
                        <tr>
                            <td>�����ͺ��̽�</td>
                            <td rowspan>ȭ 1����(����204) , �� 2����(����204)</td>
                            <td rowspan>���ǽ� GO</td>
                            <td rowspan>������</td>
                        </tr>
                        <tr>
                            <td>�����ͺ��̽�</td>
                            <td rowspan>ȭ 1����(����204) , �� 2����(����204)</td>
                            <td rowspan>���ǽ� GO</td>
                            <td rowspan>������</td>
                        </tr>
                        <tr>
                            <td>�����ͺ��̽�</td>
                            <td rowspan>ȭ 1����(����204) , �� 2����(����204)</td>
                            <td rowspan>���ǽ� GO</td>
                            <td rowspan>������</td>
                        </tr> -->
                        <tbody>
                            <%;
                             for(int i=0;i<3;i++){
                         %>
                         <tr>
                            <td>�����ͺ��̽�</td>
                            <td rowspan>ȭ 1����(����204) , �� 2����(����204)</td>
                            <td rowspan>���ǽ� GO</td>
                            <td rowspan>������</td>
                        </tr>
                                 
                         <%
                             }
                            %>                  
                            </tbody>
                    </table>
                </div>

                <!-- <ul class="column_1">
                    <li class="header">
                        <p>�����ͺ��̽�</p>
                    </li>
                    <li>0524 �ް� ����</li>
                    <li>0521 �ް� ����</li>
                    <li>0531 �� ����</li>
                </ul>
                <ul class="column_2">
                    <li class="header">
                        <p>��ǻ�� ����</p>
                    </li>
                    <li>0524 �ް� ����</li>
                    <li>0521 �ް� ����</li>
                    <li>0531 �� ����</li>
                </ul>
                <ul class="column_2">
                    <li class="header">
                        <p>�ڷ� ����</p>
                    </li>
                    <li>0524 �ް� ����</li>
                    <li>0521 �ް� ����</li>
                    <li>0531 �� ����</li>
                </ul> -->
            </div>
            <div id="detail_list">
                <h2>å�� ���� ����</h2>
                <div id="tableset">
                    <table border="table1" width="800px" height="200px">
                        <tr>
                            <th>Name</th>
                            <td>�����</td>
                            <th>��ȭ��ȣ</th>
                            <td>01000001234</td>
                        </tr>
                        <tr>
                            <th>��������ġ</th>
                            <td>������000ȣ</td>
                            <th>�̸���</th>
                            <td>hahaha@123.com</td>
                        </tr>
                        <tr>
                            <th>���ð�</th>
                            <td>��</td>
                            <th>Ȩ������</th>
                            <td>��</td>
                        </tr>

                    </table>
                </div>

            </div>
            <!-- <div id="detail_list">
                <table border="table1">
                    <tr>
                        <th>Title1</th>
                        <th>Title2</th>
                    </tr>

                    <tr>
                        <td>Test11</td>
                        <td rowspan="table2">Test12</td>
                    </tr>

                    <tr>
                        <td>Test21</td>
                    </tr>
                </table>
            </div> -->
        </div>
    </div>
    <footer id="main_footer">
        <div id="footer_photo">
            <img src="images/kwu.png" width="180" height="56" />
        </div>
        <h4>��</h4>
        <h4>���� ����� ����� 20()���赿 447-1) ������б� TEL. 02-940-5114 / Mail. webadmin@kw.ac.kr</h4>
        <address>COPYRIGHT (C) 2018 DATABASE PROJECT TEAM - KANG SEO CHOI LEE - ALL RIGHTS RESERVED</address>
    </footer>
</body>

</html>