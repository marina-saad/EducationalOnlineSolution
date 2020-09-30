<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OnlineEducation.aspx.cs" Inherits="EducationalOnlineSolution.OnlineEducation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <style>
      .card{
        
        height:200px;
        width:300px;
        background-color:#D2A260;
    
      }
      .no-underline:hover {
        text-decoration: none;
      }
    </style>
    <script>
      $(function(){
         var num ;
        /*  $(document).find("a[id^='btn']").live('click', function () {
             // $(this).siblings("[id^='sublike-form-']:first").toggle();
               num = this.id.split('btn')[1];
             // $("#btn" + num).empty();
          });*/
        // $("a").on("click",function () {

         /* $('#row').on('click', '*', function (event) {
              num = $(this).attr('id');
             
          });
         */

        /*  function options(clickedID) {
             // alert(clickedID);
              $("#" + clickedID).empty();
              $("#" + clickedID).append('<div class="card">'
                  + '<div class="card-body align-items-center justify-content-center ">'

                  + '<a href="#" class="no-underline" ><h5 >Option #1</h5></a>'
                  + '<br>'
                  + '<a href="#" class="no-underline" ><h5 >Option #2</h5></a>' +
                  '<br>' +
                  '<a href="#" class="no-underline" > <h5 >Option #3</h5></a>' +
                  '</div>' +
                  '</div>');
          }*/

          /*$('a[id^="btn_"]').on("click",function () {
              // do something
              $(this).append("<p> test</p>");
          });
          $("#btn" + num).click(function () {
                  $("#1").empty();
                  $("#1").append('<div class="card">'
                      + '<div class="card-body align-items-center justify-content-center ">'

                      + '<a href="#" class="no-underline" ><h5 >Option #1</h5></a>'
                      + '<br>'
                      + '<a href="#" class="no-underline" ><h5 >Option #2</h5></a>' +
                      '<br>' +
                      '<a href="#" class="no-underline" > <h5 >Option #3</h5></a>' +
                      '</div>' +
                      '</div>');
              */
          /*});
          $("#btn1").click(function () {
          $.ajax({
              type: "POST",
              url: "OnlineEducation.aspx/Options",
              data: dataValue,
              contentType: 'EducationalOnlineSolution/json; charset=utf-8',
              dataType: 'json',
              error: function (XMLHttpRequest, textStatus, errorThrown) {
                  alert("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
              },
              success: function (result) {
                  alert("We returned: " + result);
              }
          });
          });
      
      });*/
  
    </script>

    <script type="text/javascript">  
          $(document).ready(function () {
              $.ajax({
                  type: "POST",
                  url: "CoursesList.asmx/Options",
                  contentType: "application/json",
                  datatype: "json",
                  success: function (responseFromServer) {
                      alert(responseFromServer.d)
                  }
              });
          });
    </script>

<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EducationalOnlineSolutionDBConnectionString9 %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
<div class=" d-flex align-items-center justify-content-center " style=" margin-top: 150px; margin-left: 50px; width: 80%;">
<asp:DataList  ID="DataList1" RepeatColumns="3" RepeatDirection="Horizontal" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
    <ItemTemplate>
       <div class=" d-flex align-items-center justify-content-center " style=" padding-bottom:50px;  width: 80%;" id="row">
        <div class="ml-2 col-lg-3 col-sm-6" id="<%# Eval("Id")%>">
        <div class="card">
          <div class="card-body d-flex align-items-center justify-content-center ">
  
            <a href="#" class="btn stretched-link" id="btn<%# Eval("Id")%>" onclick="Options(this.id)">
              <h5 class="card-title" ><asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("Category_Name") %>'></asp:Label></h5>
              
            </a>
          </div>
        </div>
      </div> 
     </div>
     </ItemTemplate>
</asp:DataList>
</div>

</asp:Content>


