<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <title>세미프로젝트V1-index</title>
        <link rel="stylesheet" href="/css/base.css">
        <style>
            table { width: 75%; margin: 0 auto; 
                border-collapse: collapse;
                table-layout: fixed; }
            
            th, td { border: 1px solid black;
                text-align: center; padding: 10px }
            td:nth-child(2) { white-space: nowrap; 
                overflow: hidden; text-overflow: ellipsis }
            button { width: 100px; padding: 5px; 
                     margin-right: -10px }
            
            .newbtn { text-align: right; border: none; }
            
            .tbnav { border: none; }
            .cpage { font-weight: bold; color: red;
                     font-size: 35px }
        </style>
    </head>
    <body>
         <div id="wrap">
                <%@ include file="/layout/header.jsp" %>

        <div id="container">
            <h2>게시판</h2>
            <table>
                <colgroup><!-- 테이블 컬럼 스타일 정의 -->
                    <col style="width:10%">
                    <col style="">
                    <col style="width:15%">
                    <col style="width:15%">
                    <col style="width:10%">
                </colgroup>                
                <thead>
                    
                <tr><td colspan="5" class="newbtn">
                    <button type="button">글쓰기</button></td></tr> 
                    
                <tr><th>번호</th><th>제목</th><th>작성자</th>
                    <th>작성일</th><th>조회</th></tr></thead>

                <tbody>
                <tr><td>1</td><td>시간은 금이라구, 친구! 진짜라구,친구! 정말이라구, 친구! 참말이라구, 친구!</td><td>siestageek</td>
                    <td>2014-05-01</td><td>777</td></tr>
                <tr><td>2</td><td>시간은 금이라구, 친구! 진짜라구,친구! 정말이라구, 친구! 참말이라구, 친구!</td><td>siestageek</td>
                    <td>2014-05-01</td><td>777</td></tr>
                     <tr><td>3</td><td>시간은 금이라구, 친구! 진짜라구,친구! 정말이라구, 친구! 참말이라구, 친구!</td><td>siestageek</td>
                    <td>2014-05-01</td><td>777</td></tr>
                     <tr><td>4</td><td>시간은 금이라구, 친구! 진짜라구,친구! 정말이라구, 친구! 참말이라구, 친구!</td><td>siestageek</td>
                    <td>2014-05-01</td><td>777</td></tr>
                     <tr><td>5</td><td>시간은 금이라구, 친구! 진짜라구,친구! 정말이라구, 친구! 참말이라구, 친구!</td><td>siestageek</td>
                    <td>2014-05-01</td><td>777</td></tr>
                     <tr><td>6</td><td>시간은 금이라구, 친구! 진짜라구,친구! 정말이라구, 친구! 참말이라구, 친구!</td><td>siestageek</td>
                    <td>2014-05-01</td><td>777</td></tr>
                     <tr><td>7</td><td>시간은 금이라구, 친구! 진짜라구,친구! 정말이라구, 친구! 참말이라구, 친구!</td><td>siestageek</td>
                    <td>2014-05-01</td><td>777</td></tr>
                     <tr><td>8</td><td>시간은 금이라구, 친구! 진짜라구,친구! 정말이라구, 친구! 참말이라구, 친구!</td><td>siestageek</td>
                    <td>2014-05-01</td><td>777</td></tr>
                     <tr><td>9</td><td>시간은 금이라구, 친구! 진짜라구,친구! 정말이라구, 친구! 참말이라구, 친구!</td><td>siestageek</td>
                    <td>2014-05-01</td><td>777</td></tr>
                     <tr><td>10</td><td>시간은 금이라구, 친구! 진짜라구,친구! 정말이라구, 친구! 참말이라구, 친구!</td><td>siestageek</td>
                    <td>2014-05-01</td><td>777</td></tr>
                     <tr><td>11</td><td>시간은 금이라구, 친구! 진짜라구,친구! 정말이라구, 친구! 참말이라구, 친구!</td><td>siestageek</td>
                    <td>2014-05-01</td><td>777</td></tr>
                     <tr><td>12</td><td>시간은 금이라구, 친구! 진짜라구,친구! 정말이라구, 친구! 참말이라구, 친구!</td><td>siestageek</td>
                    <td>2014-05-01</td><td>777</td></tr> <tr><td>13</td><td>시간은 금이라구, 친구! 진짜라구,친구! 정말이라구, 친구! 참말이라구, 친구!</td><td>siestageek</td>
                    <td>2014-05-01</td><td>777</td></tr> <tr><td>14</td><td>시간은 금이라구, 친구! 진짜라구,친구! 정말이라구, 친구! 참말이라구, 친구!</td><td>siestageek</td>
                    <td>2014-05-01</td><td>777</td></tr>
                     <tr><td>15</td><td>시간은 금이라구, 친구! 진짜라구,친구! 정말이라구, 친구! 참말이라구, 친구!</td><td>siestageek</td>
                    <td>2014-05-01</td><td>777</td></tr>
                    </tbody>
                <tfoot>
                    <tr><td colspan="5" class="tbnav">
                        <span>◁ ◀◀<span class="cpage">1</span> 
                            2 3 4 5 6 7 8 9 10 ▶▶ ▷</span>
                    </td></tr>
                </tfoot>
            </table>
        </div>
                <%@ include file="/layout/footer.jsp" %>

        </div>
    </body>
</html>