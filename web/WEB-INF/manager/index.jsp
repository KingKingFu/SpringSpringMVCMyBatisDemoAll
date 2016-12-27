<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath }/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/easyui/jquery.easyui.min.js"></script>

</head>

<body>
<div id="cc" class="easyui-layout" style="width:90%;height:100%;margin: 0 auto;">
    <div data-options="region:'north'" style="height:100px;">
        north
        <br>
        ${emp}
    </div>
    <div data-options="region:'south'" style="height:100px;">
        south
    </div>
    <div data-options="region:'west',title:'菜单',split:true" style="width:250px;">
        <ul id="tt"></ul>
    </div>
    <div data-options="region:'center',title:'功能区'" style="padding:5px;background:#eee;">
        <div id="tabs" class="easyui-tabs" fit="true" >
            <div title="主页面" style="padding:20px;">
                默认广告页面
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        $('#tt').tree({
            url: 'menuData.do?empId=${emp.id}',
            onClick: function (node) {
                openTab(node);
            }
        });
        function openTab(node) {
            if ($("#tabs").tabs("exists", node.text)) {
                $("#tabs").tabs("select", node.text);
            } else {/*将请求传递到URL转换controller中，返回所要访问的界面*/
                var content = "<iframe frameborder=0 scrolling='auto' style='width:100%;height:100%' src=${pageContext.request.contextPath}/url2Secrect.do?url=" + node.attributes.url + "></iframe>"
                $("#tabs").tabs("add", {
                    title: node.text,
                    closable: true,
                    content: content
                });
            }
        }
    });
</script>
</body>
</html>