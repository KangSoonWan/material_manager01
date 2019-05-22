<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>스프링부트 웹서비스</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!--부트스트랩 css 추가-->
    <!-- <link rel="stylesheet" href="/css/lib/bootstrap.min.css"> -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
</head>
<body>
                    <h1 class="modal-title" id="savePostsLabel">내부자산 등록</h1>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="serial_number">S/N</label>
                            <input type="text" class="form-control" id="serial_number" placeholder="S/N를 입력하세요">
                        </div>
                        <div class="form-group">
                            <label for="brand"> 제조사 </label>
                            <input type="text" class="form-control" id="brand" placeholder="브랜드를 입력하세요">
                        </div>
                        <div class="form-group">
                            <label for="product_kind_name"> 장비명  </label>
                            <input class="form-control" id="product_kind_name" placeholder="장비명을 입력하세요">
                        </div>
                        <div class="form-group">
                        <label for="product_kind_name"> INCH  </label>
						<select id="inch_size" >
							 <option value="">모니터인치선택</option>
                     		 <option value="13인치"">13인치</option>
                     		 <option value="14인치"">14인치</option>
                     		 <option value="15인치"">15인치</option>
                     		 <option value="16인치"">16인치</option>
                     		 <option value="17인치"">17인치</option>
                     	</select>
                     	</div>
<!--                         <label for="purchase_date"> 구매일  </label>
                        <input class="form-control" id="purchase_date" placeholder="날짜를 선택하세요">
                        <img src="static/image/jquery-ui.css/calendar.png" alt="Calendar!" onclick="SetDate();" />
                        <div class="form-group">
                        <label for="manufacture_date"> 제조일자 </label>
                        <input class="form-control" id="manufacture_date" placeholder="제조일자를 선택하세요">
                        <img src="static/image/jquery-ui.css/calendar.png" alt="Calendar!" onclick="SetDate();" />
                        </div> -->
                        <div class="form-group">
						<label for="ram_size"> RAM </label>
						<select id="ram_size" >
							 <option value="">램사이즈선택</option>
                     		 <option value="4GB"">4GB</option>
                     		 <option value="8GB"">8GB</option>
                     		 <option value="16GB"">16GB</option>
                     	</select>
                        </div>
                        <div class="form-group">
						<label for="drive_name"> 드라이브  </label>
						<select id="drive_name" >
							 <option value="">드라이브선택</option>
                     		 <option value="HDD256GB"">HDD256GB</option>
                     		 <option value="HDD512GB"">HDD512GB</option>
                     		 <option value="SSD256GB"">SSD256GB</option>
                     		 <option value="SSD512GB"">SSD512GB</option>
                     	</select>
                        </div>
                        <div class="form-group">
                            <label for="purchase_price"> 가격  </label>
                            <input class="form-control" id="purchase_price" placeholder="가격을 입력하세요">
                        </div>
                        <div class="form-group">
                            <label for="gc_name"> 그래픽카드  </label>
                            <input class="form-control" id="gc_name" placeholder="그래픽카드를 입력하세요">
                        </div>
                        <div class="form-group">
                            <label for="purchase_url"> 구매사이트  </label>
                            <input class="form-control" id="purchase_url" placeholder="구매사이트를 입력하세요">
                        </div>
                        <div class="form-group">
                            <label for="as_number"> A/S  </label>
                            <input class="form-control" id="as_number" placeholder="번호를 입력하세요">
                        </div>
                        <div class="form-group">
                            <label for="dpreciation"> 감가삼각  </label>
                            <input class="form-control" id="dpreciation" placeholder="내용을 입력하세요">
                        </div>                                                                                                                                                                                   
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                    <button type="button" class="btn btn-primary" id="btn-save">등록</button>
                </div>
            </div>
        </div>
    </div>

    <!--부트스트랩 js, jquery 추가-->
    <!-- <script src="/js/lib/jquery.min.js"></script>
    <script src="/js/lib/bootstrap.min.js"></script> -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<script src="/static/image/jquery-ui.css"></script>
	<script src="/static/js/datepicker-ko.js"></script>
    <script type="text/javascript">
    	$(function(){
    		$("#purchase_date").datepicker({
    		 showOn: "button",
    		 buttonImage: "images/calendar.gif",
    		 buttonImageOnly: false,
			 buttonText: "Select date"
    	});
    })   
    </script>
</body>
</html>