<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<script type="text/javascript" src="../ggg/jquery-3.6.0.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style type="text/css">
   /* div{
      border: 1px solid black;
   } */
   .allWrapper{
      min-width: 1050px;
      margin-top: 50px;
      margin-bottom: 60px;
      background-color: #fff;
   }
   
   .titleName{
      margin-bottom: 50px;
       font-size: 28px;
       line-height: 35px;
       font-weight: 500;
       text-align: center;
       letter-spacing: -1px;
       color: #333;
    }
    .Line{
       padding-bottom: 10px;
       border-bottom: 2px solid rgb(51, 51, 51);
       font-size: 12px;
       color: rgb(102, 102, 102);
       line-height: 17px;
       text-align: right;
    }
   .inputAllWrapper{
      width: 640px;
      margin: 0 auto;
   }
   
   .inputWrapper{
      padding 0px;
   }
   
   .inputBoxWrapper{
      display: inline-flex;
       width: 100%;
       padding: 10px 20px;
   }
   
   .inputTitle{
      width: 139px;
       padding-top: 12px;
   }
   .inputTitleFont{
      font-weight: 500;
         color: rgb(51, 51, 51);
       line-height: 20px;
   }
   .starSign{
      color : red;
   }
   .inputBox_1{
      margin-right: 20px;
      
   }
   .inputBox_2{
      padding-bottom: 0px;
   }
   .inputBox_3{
        width: 320px;
      position: relative;
      height: 48px;
   }
   .inputTypeBox{
      width: 100%;
       height: 46px;
       padding: 0px 11px 1px 15px;
       border-radius: 4px;
       border: 1px solid rgb(221, 221, 221);
       font-weight: 400;
       font-size: 16px;
       line-height: 1.5;
       color: rgb(51, 51, 51);
       outline: none;
       box-sizing: border-box;
   }
   .buttonBox{
      width: 120px;
       margin-left: 8px;
   }
   .buttonBox>button{
       height: 44px;
       border-radius: 3px;
   }
   .btn{
      display: block;
       padding: 0px 10px;
       text-align: center;
       overflow: hidden;
       width: 100%;
       height: 52px;
       border-radius: 6px;
       color: #88001b;
       background-color: rgb(255, 255, 255);
       border: 1px solid #88001b;
       cursor: pointer;
   }
   .btnTxt{
      display: inline-block;
          font-size: 16px;
       font-weight: 500;
   }
   
   .buttonBox > button > span {
       font-weight: 500;
       font-size: 14px;
   }
   
   .addrFindBtn{
      display: block;
       padding: 0px 10px;
       text-align: center;
       overflow: hidden;
       width: 100%;
       height: 44px;
       border-radius: 4px;
       color: rgb(95, 0, 128);
       background-color: rgb(255, 255, 255);
       border: 1px solid rgb(95, 0, 128);
   }
   
   .addrWaringTxt{
      display: block;
       margin-top: 10px;
       font-size: 12px;
       line-height: 18px;
       color: gray;
   }
   
   .agreeWrapper{
      padding: 0px;
   }
   
   .agreeBox{
      display: inline-flex;
       width: 100%;
       padding: 10px 0px 10px 20px;   
   }
   .agreeItemBox{
      display: flex;
       padding: 8px 0px;
       -webkit-box-pack: justify;
          justify-content: space-between;
       -webkit-box-align: center;
       align-items: center;
   }
   
   .agreeItemBox:first-of-type{
      align-items: flex-start;
       flex-direction: column;
       padding-top: 12px;
   }
   .allAgreeMsg{
      position: relative;
       display: flex;
       -webkit-box-align: center;
       align-items: center;
       vertical-align: top;
       line-height: normal;
       color: rgb(51, 51, 51);
       padding: 0px;
       font-weight: 500;
       font-size: 18px;
   }
   
   .agreeWarningTxt{
      font-size: 12px;
       color: rgb(102, 102, 102);
       padding-top: 4px;
       padding-left: 36px;   
   }
   
   .agreeItem_1{
      display: -webkit-box;
       display: -webkit-flex;
       display: -ms-flexbox;
       display: flex;
       -webkit-align-items: center;
       -webkit-box-align: center;
       -ms-flex-align: center;
       align-items: center;
   }
   
   .agreeItemTxt{
      position: relative;
       display: flex;
       -webkit-box-align: center;
       align-items: center;
       vertical-align: top;
       line-height: normal;
       color: rgb(51, 51, 51);
       padding: 0px;
       font-size: 14px;
   }
   
   .agreeType{
      padding-left: 5px;
       color: rgb(153, 153, 153);
   }
   
   .agreeDetail{
      padding-right: 22px;
      letter-spacing: 0px;
   }
   
   .marketing{
      position: relative;
       display: flex;
       -webkit-box-align: center;
       align-items: center;
       padding-left: 24px;
   }
   .marketingWay{
       padding: 14px 80px 9px 0px;
       position: relative;
       display: flex;
       -webkit-box-align: center;
       align-items: center;
       vertical-align: top;
       line-height: normal;
       color: rgb(51, 51, 51);
       font-size: 14px;
   }
   
   .marketingRes{
       margin-left: 36px;
       padding-left: 16px;
       font-size: 12px;
       color: rgb(95, 0, 128);
       line-height: 18px;
       letter-spacing: -0.5px;
   }
   .btnWrapper{
      display: flex;
       -webkit-box-pack: center;
       justify-content: center;
       border-top: 1px solid rgb(247, 247, 247);
       padding: 40px 0px;
   }
   
   .submitBtn{
      display: block;
       padding: 0px 10px;
       text-align: center;
       overflow: hidden;
       width: 240px;
       height: 56px;
       border-radius: 3px;
       color: rgb(255, 255, 255);
       background-color: #88001b;
       border: 0px none;
       cursor: pointer;
   }
   
   .warningMsgBox{
      padding: 10px 0px;
   }
   
   .warningMsg{
      font-size: 13px;
       color: rgb(240, 63, 64);
         margin-top: -4px;
   }
/*==????????? ??? ????????? ???===========================================================*/
@media screen and (max-width: 570px){
   .allWrapper{
      min-width: 400px;
         margin-top: 50px;
         margin-bottom: 60px;
         background-color: #fff;
      }
      
      .titleName{
         margin-bottom: 0px;
          font-size: 28px;
          line-height: 35px;
          font-weight: 500;
          text-align: center;
          letter-spacing: -1px;
          color: #333;
    }
      .inputAllWrapper{
         width: 400px;
         margin: 0 auto;
      }
      .inputBoxWrapper{
         display: inline-flex;
          width: 400px;
          padding: 10px 0px;
      }
      .inputBox_1{
      flex : 1 1 0%;
      margin-right: 0px;
      
      }
      .inputBox_2{
      padding-bottom: 0px;
      }
      .inputBox_3{
        width: 10px;
      position: relative;
      height: 48px;
      }
   
   .inputTitle{
         width: 109px;
          padding-top: 12px;
      }
      .inputTypeBox {
       width: 165px;
       height: 46px;
       padding: 0px 11px 1px 15px;
       border-radius: 4px;
       border: 1px solid rgb(221, 221, 221);
       font-weight: 400;
       font-size: 12px;
       line-height: 1.5;
       color: rgb(51, 51, 51);
       outline: none;
       box-sizing: border-box;
   }
   
   .inputTitleFont {
       font-weight: 0;
       font-size: 14px;
       color: rgb(51, 51, 51);
       line-height: 20px;
   }
   
   .buttonBox {
       width: 111px;
       margin-left: 8px;
   }
   .btn {
       display: block;
       padding: 0px 10px;
       text-align: center;
       overflow: hidden;
       width: 82px;
       height: 52px;
       border-radius: 6px;
       color: #88001b;
       background-color: rgb(255, 255, 255);
       border: 1px solid #88001b;
   }
   
   .agreeBox {
       display: inline-flex;
       width: 400px;
       padding: 0px;
   }
   
   .agreeTitle{
      width: 63px;
       padding-top: 12px;
   }
   .agreeWarningTxt {
       font-size: 12px;
       color: rgb(102, 102, 102);
       padding-top: 4px;
       padding-left: 15px;
   }
   
   .allAgreeMsg{
      font-size: 12px;
   }
   
   .agreeWarningTxt{
      font-size: 10px;
   }
   
   .agreeItemTxt {
       position: relative;
       display: flex;
       -webkit-box-align: center;
       align-items: center;
       vertical-align: top;
       line-height: normal;
       color: rgb(51, 51, 51);
       padding: 0px;
       font-size: 12px;
   }
   .marketingRes{
      margin-left: 0px;
   }
   
      
         
}   
</style>

<form action="MemberJoinReg" method="post" id="joinForm">
<div class="allWrapper">
   <!-- ?????? -->
   <div class="titleName">
      ????????????
   </div>
   
   <!-- ????????????,???????????? ?????? wrapper -->
   <div class="inputAllWrapper">
   
      <!-- ????????? -->
      <div class="Line">
         <span class="starSign">*</span> ??????????????????
      </div>
      
      <!-- ???????????? wrapper -->
      <div class="inputWrapper">
      
         <!-- id?????? -->
         <div class="inputBoxWrapper">
            <div class="inputTitle">
               <label class="inputTitleFont">
                  ?????????<span class="starSign">*</span>
               </label>
            </div>
            
            <div class="inputBox_1">
               <div class="inputBox_2">
                  <div class="inputBox_3">
                     <input id="memberId" name="memberId" placeholder="???????????? ??????????????????" type="text" class="inputTypeBox" value="" />
                  </div>
               </div>
               
               <div class="warningMsgBox">
                  <p class="warningMsg" id="idChkMsg"></p>
               </div>
               
               
            </div>
            
            <div class="buttonBox">
               <button class="btn" type="button">
                  <span class="btnTxt" id="idChkBtn">????????????</span>
               </button>
            </div>
         </div>
         
         <!-- ?????????????????? -->
         <div class="inputBoxWrapper">
            <div class="inputTitle">
               <label class="inputTitleFont">
                  ????????????<span class="starSign">*</span>
               </label>
            </div>
            
            <div class="inputBox_1 ">
               <div class="inputBox_2 ">
                  <div class="inputBox_3 ">
                     <input id="password" name="password" placeholder="??????????????? ??????????????????" type="password" class="inputTypeBox" value="">
                  </div>
               </div>
               
               <div class="warningMsgBox">
                  <p class="warningMsg" id="warningMsg"></p>
               </div>
            </div>
            
            <div class="buttonBox ">
            </div>
         </div>
         
         <!-- ?????????????????? -->
         <div class="inputBoxWrapper">
            <div class="inputTitle ">
               <label class="inputTitleFont ">
                  ??????????????????<span class="starSign ">*</span>
               </label>
            </div>
            
            <div class="inputBox_1 ">
               <div class="inputBox_2 ">
                  <div class="inputBox_3 ">
                     <input data-testid="input-box" id="passwordConfirm" name="passwordConfirm" placeholder="??????????????? ?????? ??? ??????????????????" class="inputTypeBox" type="password" value="">
                  </div>
               </div>
               
               <div class="warningMsgBox">
                  <p class="warningMsg" id="pwMatchMsg"></p>
               </div>
               
            </div>
            
            <div class="buttonBox ">
            </div>
         </div>
         
         <!-- ???????????? -->
         <div class="inputBoxWrapper">
            <div class="inputTitle ">
               <label class="inputTitleFont ">
                  ??????<span class="starSign ">*</span>
               </label>
            </div>
            
            <div class="inputBox_1 ">
               <div class="inputBox_2 ">
                  <div class="inputBox_3 ">
                     <input id="name" name="name" placeholder="????????? ????????? ?????????" class="inputTypeBox" type="text" value="">
                  </div>
               </div>
               
               <div class="warningMsgBox">
                  <p class="warningMsg" id="nameMatchMsg"></p>
               </div>
               
            </div>
            
            <div class="buttonBox ">
            </div>
         </div>
         
         <!-- ????????? ?????? -->
         <!-- hidden_email??? m_email??? ????????? ?????? ????????? ?????? ???????????? ??????????????? ?????? ??? ????????? ????????? ??????. -->
      <input type="hidden" id="hidden_email" name ="hidden_email" value="${mdto.m_email }" />   
         <div class="inputBoxWrapper">
            <div class="inputTitle ">
               <label class="inputTitleFont ">
                  ?????????<span class="starSign ">*</span>
               </label>
            </div>
            <div class="inputBox_1 ">
               <div class="inputBox_2 ">
                  <div class="inputBox_3 ">
                     <input id="m_email" name="m_email" placeholder="???: onedayoneshot@oneshot.com" class="inputTypeBox" type="text" value="">
                  </div>
               </div>
               
               <div class="warningMsgBox">
                  <p class="warningMsg" id="emailMatchMsg"></p>
               </div>
               
            </div>
            
            <div class="buttonBox ">
               <button class="btn" id ="emailChkBtn" type="button" onclick="emailSend()">
                  <span class="btnTxt ">???????????? ??????</span>
               </button>
            </div>
         </div>
         
         <!-- ????????? ???????????? ?????? ????????????  -->
         <div class="inputBoxWrapper">
            <div class="inputTitle ">
               <label class="inputTitleFont ">
                  ????????? ??????<span class="starSign ">*</span>
               </label>
            </div>
            <div class="inputBox_1 ">
               <div class="inputBox_2 ">
                  <div class="inputBox_3 ">
                     
                     <input id="chk_codeNum" name="chk_codeNum" placeholder="?????? 6??????" class="inputTypeBox" type="text" value="">
                     <input type="hidden" id="codeNum" name="codeNum"> <!-- ????????? ?????? ????????? -->
                  </div>
               </div>
               
               <div class="warningMsgBox">
                  <p class="warningMsg" id="email_check"></p>
               </div>
            </div>
            
            <div class="buttonBox ">
               <button class="btn" id = "emailNumChkBtn" type="button">
                  <span class="btnTxt ">???????????? ??????</span>
               </button>
            </div>
         </div>
         
         <!-- ????????? ???????????? ?????? ????????????  ???-->
             
         <!-- ???????????? -->
         <div class="inputBoxWrapper">
            <div class="inputTitle">
               <label class="inputTitleFont">
                  ??????<span class="starSign">*</span>
               </label>
            </div>
            
            <div class="inputBox_1 ">
               <div class="inputBox_2 ">
                  <div class="inputBox_3 e1uzxhvi3">
                     <input id="numberAddress" name="address" placeholder="????????? ????????? ?????????" type="text" readonly="" class="inputTypeBox" value="">
                  </div>
               </div>
               <span class="addrWaringTxt">
                  ???????????? ?????? ???????????? ????????? ????????? ??? ????????????.
               </span>
            </div>
            
            
            <div class="buttonBox">
               <button class="btn" type="button" id="findAddress">
                  <span class="btnTxt">?????? ??????</span>
               </button>
            </div>
         </div>
         
         <div id="wrap" style="display:none;border:1px solid;width:100%;height:300px;margin:5px 0;position:relative">
                  <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="?????? ??????">
         </div>
         
      </div>
      
      <!-- ??? ????????? -->
      <div class="Line"></div>
      
      <!-- ?????????????????? wrapper -->
      <div class="agreeWrapper"> 
         <div class="agreeBox">
         
            <!-- ?????? -->
            <div class="agreeTitle">
               <label class="inputTitleFont">
                  ??????????????????
                  <span class="starSign">*</span>
               </label>
            </div>
            
            <!-- ?????????????????????Wrapper -->
            <div class="inputBox_1">
               <div class="agreeItemBox">
                  <label class="allAgreeMsg" for="TermsAgreeAll">
                     <input id="TermsAgreeAll" type="checkbox" class="agreeChkBox">
                           ?????? ???????????????.
                  </label>
                  <p class="agreeWarningTxt">??????????????? ???????????? ?????? ????????? ???????????? ??? ???????????? ???????????? ????????? ??? ????????????.</p>
               </div>
               
               <div class="agreeItemBox ">
                  <div class="agreeItem_1 ">
                     <label class="agreeItemTxt " for="RequiredTermsCondition">
                        <input id="RequiredTermsCondition" type="checkbox" class="chk ">
                              ???????????? ??????
                     </label>
                     <span class="agreeType ">(??????)</span>
                  </div>
                  <a class="agreeDetail ">????????????</a>
               </div>
               
               <div class="agreeItemBox ">
                  <div class="agreeItem_1 ">
                     <label class="agreeItemTxt " for="RequiredTermsOfPrivacy">
                        <input id="RequiredTermsOfPrivacy" type="checkbox" class="chk ">
                              ???????????? ??????????????? ??????
                     </label>
                     <span class="agreeType ">(??????)</span>
                  </div>
                  <a class="agreeDetail ">????????????</a>
               </div>
               
               <div class="agreeItemBox ">
                  <div class="agreeItem_1 ">
                     <label class="agreeItemTxt " for="OptionalTermsOfPrivacy">
                        <input id="OptionalTermsOfPrivacy" type="checkbox" class="chk ">
                              ???????????? ??????????????? ??????
                     </label>
                     <span class="agreeType ">(??????)</span>
                  </div>
                  <a class="agreeDetail ">????????????</a>
               </div>
               
               <div class="css-ob6kg2 ">
                  <div class="agreeItem_1 ">
                     <label class="agreeItemTxt " for="SignupEventAll">
                        <input id="SignupEventAll" type="checkbox" class="chk ">
                              ???????????? ??? ??????/?????? ?????? ??????
                     </label>
                     <span class="agreeType ">(??????)</span>
                  </div>
                  
                  <div class="marketing ">
                     <label class="marketingWay " for="OptionalTermsOfSms">
                        <input id="OptionalTermsOfSms" type="checkbox" class="chk ">
                              email
                     </label>
                  </div>
                  
                  <div class="marketing ">
                     <p class="marketingRes ">
                        ?????? ??? ?????? ????????? [5%??????]
                     </p>
                  </div>
               </div>
               
               <!-- ???????????? -->
               <div class="agreeItemBox ">
                  <div class="agreeItem_1 ">
                     <label class="agreeItemTxt " for="RequiredSignupAge">
                        <input id="RequiredSignupAge" type="checkbox">
                              ????????? ??? 19??? ???????????????.
                     </label>
                     <span class="agreeType ">
                        (??????)
                     </span>
                  </div>
               </div> <!-- ???????????? -->
               
            </div>
            
         </div>
         
      </div> <!-- ???????????? wrapper -->
      
      <!--????????????-->
      <div class="btnWrapper">
         <button class="submitBtn" id="joinBtn" type="button" width="240" height="56" radius="3">
            <span class="btnTxt ">
               ????????????
            </span>
         </button>
      </div>
      
   </div>
   
</div>   
</form>
<script type="text/javascript">

///////////////////////////////////////////////////////////////////////////
//id ???????????????
var idCheck= /^[a-zA-Z0-9]{6,16}$/;
$("#memberId").keyup(function () {
   if(idCheck.test($('#memberId').val())){
      document.getElementById('idChkMsg').innerHTML='';
   }
   else{
      $("#idChkMsg").html("6??? ?????? 16??? ????????? ?????? ?????? ????????? ????????? ??????");
       $("#idChkMsg").css("color","red");
   }
});
var idchk = false;
//????????? ????????????
$("#idChkBtn").click(function() {
   $.ajax({
      url:'<c:url value="/ajax/IdChk"/>',
      type:"GET",
      data:{memberId:$("#memberId").val()},
      datatype:"text",
      async:false,     //ajax ?????? ?????? ????????? ?????????
      success:function(res){
         if($("#memberId").val()!="" && idCheck.test($('#memberId').val())){
         
            if(res=="exist"){ //????????? ID
               $("#idChkMsg").html("????????? ??????????????????.");
               $("#idChkMsg").css('color','red');
               idchk = false;
            }
            else{ //??????????????? ID
               $("#idChkMsg").html("??????????????? ??????????????????.");
               $("#idChkMsg").css('color','green');
               idchk = true;
            }
         }else if(!idCheck.test($('#memberId').val())) {
            alert("???????????? ????????? ?????? ?????? ????????????.")
            idchk=false;
         }
         
         else{
            alert("???????????? ????????? ?????????!")
            idchk=false;
         }   
      },
      error:function(res){
      }
   })
});

//1??? ???????????? ???????????????
var pwCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{10,16}$/; //A~Z a~z 0~9??? ???????????? 4~12?????? ????????????
var pwSpaceCheck = /[\s]/g;
$("#password").keyup(function(){
   
   if(pwCheck.test($("#password").val())){
      document.getElementById('warningMsg').innerHTML='';
   }else if(pwSpaceCheck.test($("#password").val())==true){
      $("#warningMsg").html("????????? ?????????????????????.");
      $("#warningMsg").css("color","red");
   }else{
      $("#warningMsg").html("??????/??????/????????????(????????????)??? ???????????? 10??? ??????");
      $("#warningMsg").css("color","red");
   }
});

//2??? ???????????? ??? 1??? ???????????? ??????
$("#passwordConfirm").keyup(function(){
   if($("#password").val()==$("#passwordConfirm").val()){
      $("#pwMatchMsg").html("??????????????? ???????????????.");
      $("#pwMatchMsg").css("color","blue");
   }else if($("#passwordConfirm").val()==""){
     $("#pwMatchMsg").html("??????????????? ?????? ??? ????????? ?????????.");
     $("#pwMatchMsg").css("color","red");
   }else{
      $("#pwMatchMsg").html("??????????????? ???????????? ????????????.");
      $("#pwMatchMsg").css("color","red");
   }
   
});

//????????? ?????? ????????? ??????
var nameCheck= /^[???-???]+$/;
$("#name").keyup(function () {
   if(nameCheck.test($("#name").val())){
         document.getElementById('nameMatchMsg').innerHTML='';
      }else if($("#name").val()==""){
         $("#nameMatchMsg").html("????????? ?????? ????????????.");
         $("#nameMatchMsg").css("color","red");
      }else{
         $("#nameMatchMsg").html("?????? ????????? ?????? ????????????.");
         $("#nameMatchMsg").css("color","red");
      }
});

//????????? ????????? ???????????????
var emailCheck = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
$("#m_email").keyup(function () {
   if(emailCheck.test($("#m_email").val())){
      document.getElementById('emailMatchMsg').innerHTML='';
   }else if($("#m_email").val()==""){
      $("#emailMatchMsg").html("???????????? ????????? ?????????.");
      $("#emailMatchMsg").css("color","red");
   }else{
       $("#emailMatchMsg").html("????????? ???????????? ?????? ????????????.");
       $("#emailMatchMsg").css("color","red");
   }
});
//////////////////////////////////////////////////////////////////////////
/////////////////////////////////////// ????????? ????????? ????????? ???????????????.
var sendEmailControl = false;
var sendEmailClear = false;

function emailSend() {
   if($("#m_email").val()==""){
      alert("???????????? ????????? ?????????.")
   }else if(!emailCheck.test($("#m_email").val())){
      alert("???????????? ????????? ?????? ????????? ?????????.");
   }
   else{
      $.ajax({
         
         url:'<c:url value="/ajax/EmailChk"/>',
         type:"GET",
         data:{m_email:$("#m_email").val(), hidden_email:$("#hidden_email").val()},
         datatype:"text",
         async:false,     //ajax ?????? ?????? ????????? ?????????
         success:function(email_res){
                     
            if(email_res=="emailExist"){ //????????? ID
                  alert("????????? ??????????????????.");
            } else{ //??????????????? ID
               alert("??????????????? ?????????????????????.");
               sendEmailControl = true
               
               if (sendEmailControl) {
                  /* ajax??? ???????????? ????????? ????????? ?????? */
                  $.ajax({
                     url: "../ajax/SendEmail",
                     type: "post",
                     data: {m_email: $("#m_email").val(), p_name: $("#p_name").val()},
                     dataType: "text",
                     success:function(res){
                        
                        /* ee -> emailConfirmNum (????????????) */
                        console.log(res);
                        $("#codeNum").val(res);
                        
                        if(res=="emailExist"){ //????????? Email
                           alert("????????? ??????????????????.");
                        } 
                     },
                     error:function(res){
                        alert("??????????????????");
                     }
                  });
                  sendEmailControl = false;   
               }
            }         
         },
         error:function(res){
         }
      })
   }
    
}
   
$("#emailNumChkBtn").click(function () {
   if($("#chk_codeNum").val() == $("#codeNum").val()){
         alert("??????????????? ????????????.");
         document.getElementById('email_check').innerHTML='????????????';
         document.getElementById('email_check').style.color='blue';
         sendEmailClear = true;
         
   }else{
      alert("??????????????? ????????????. ?????? ??????????????????.");
      document.getElementById('email_check').innerHTML='???????????? ?????????';
      document.getElementById('email_check').style.color='red';
      sendEmailClear = false;
      
   }
});  
///////////////////////////////////////////////////////////////////////////
//???????????? ????????? ?????? ?????? ????????? ??????
$('.agreeChkBox').click(function(){
   $('.chk').prop('checked', this.checked);
});



//?????? ?????? ?????? ??????
var element_wrap = document.getElementById('wrap');

function foldDaumPostcode() {
   // iframe??? ?????? element??? ???????????? ??????.
   element_wrap.style.display = 'none';
}

$("#findAddress").click(function(){
   // ?????? scroll ????????? ??????????????????.
    var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
    new daum.Postcode({
       oncomplete: function(data) {
          // ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

          // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
          // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
          var addr = ''; // ?????? ??????
          var extraAddr = ''; // ???????????? ??????
          
          //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
          if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
             addr = data.roadAddress;
          } else { // ???????????? ?????? ????????? ???????????? ??????(J)
             addr = data.jibunAddress;
          }
          
          document.getElementById("numberAddress").value = addr;
          
          // iframe??? ?????? element??? ???????????? ??????.
          // (autoClose:false ????????? ???????????????, ?????? ????????? ???????????? ???????????? ???????????? ?????????.)
          element_wrap.style.display = 'none';
          
          // ???????????? ?????? ????????? ????????? ???????????? scroll ????????? ????????????.
          document.body.scrollTop = currentScroll;
       },
       // ???????????? ?????? ?????? ????????? ?????????????????? ????????? ????????? ???????????? ??????. iframe??? ?????? element??? ???????????? ????????????.
       /* onresize : function(size) {
          element_wrap.style.height = size.height+'px';
       }, */
       width : '100%',
       height : '100%'
    }).embed(element_wrap);

    // iframe??? ?????? element??? ????????? ??????.
    element_wrap.style.display = 'block';
});

//???????????? ?????? ????????? ???????????? + ????????????

$("#joinBtn").click(function () {
   //??????????????? ?????????(??????, ????????????, ????????????)
   console.log(idchk);
   if($("#memberId").val()==""){
      alert("???????????? ????????? ?????????.");
      $("#memberId").focus();
   }
   else if(!idchk){
      alert("????????? ??????????????? ??? ?????????.");
      $("#memberId").focus();
   }
   else if(!idCheck.test($('#memberId').val())){
      alert("???????????? ????????? ?????? ????????? ?????????.")
      $("#memberId").focus();
   }
   
   //1??? ???????????? ?????????(??????, ????????????)
   else if($("#password").val()==""){
      alert("??????????????? ????????? ?????????.");
      $("#password").focus();
   }
   else if(!pwCheck.test($("#password").val())){
      alert("???????????? ????????? ?????? ????????? ?????????.");
      $("#password").focus();
   }
   
   //2??? ???????????? ?????????(??????, 1??? 2??? ?????????)
   else if($("#passwordConfirm").val()==""){
      alert("???????????? ????????? ????????? ?????????.");
      $("#passwordConfirm").focus();
   }
   else if($("#password").val()!=$("#passwordConfirm").val()){
      alert("???????????? ????????? ????????? ?????????");
      $("#passwordConfirm").focus();
   }
   
   //???????????? ?????????(??????, ????????????)
   else if($("#name").val()==""){
      alert("????????? ????????? ?????????.");
      $("#name").focus();
   }
   else if(!nameCheck.test($("#name").val())){
      alert("????????? ????????? ?????? ????????? ?????????.");
      $("#name").focus(); 
   }
   
   //??????????????? ?????????(??????, ????????????)
   else if($("#m_email").val()==""){
      alert("???????????? ????????? ?????????.");
      $("#m_email").focus();
   }
   else if(!emailCheck.test($("#m_email").val())){
      alert("???????????? ????????? ?????? ????????? ?????????.");
      $("#m_email").focus();
   }
   
   //????????? ???????????? ?????????(?????? ????????????)
   else if($("#chk_codeNum").val()==""){
      alert("??????????????? ????????? ?????????.")
      $("#chk_codeNum").focus();
   }
  else if(!sendEmailClear){
      alert("??????????????? ????????? ?????? ????????????.")
      $("#chk_codeNum").focus();
   }
   
   //???????????? ?????????(??????)
   else if($("#numberAddress").val()==""){
      alert("????????? ????????? ?????????.");
      $("#numberAddress").focus();
   }
   
   //???????????? ?????????(?????? ?????? ????????????)
   else if($("#RequiredTermsCondition").is(":checked")==false){
      alert("??????????????? ????????? ?????????.");
   }
   else if($("#RequiredTermsOfPrivacy").is(":checked")==false){
      alert("???????????? ?????? ??? ??????????????? ??????????????????.");
   }
   else if($("#RequiredSignupAge").is(":checked")==false){
      alert("??????????????? ??????????????????.");
   }
   else{
      $("#joinForm").submit();
   }
});

</script>