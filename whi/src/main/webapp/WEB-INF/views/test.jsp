<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#dex{
		border:4px solid black;
		display: inline-block;
	}
	#selectBox{
		border:4px solid black;
	}
	#selectList{
		border:4px solid black;
	}
	#joinBox{
		display: inline-block;
	}
	#area{
		
	}
</style>
<script type="text/javascript" src="resources/test_js/test.js"></script>
</head>

<body>
<div>
<c:if test="${vo ne null }"><h1>VO에 값이 있다!!</h1></c:if>
<c:if test="${vo eq null }"><h1>VO에 값이 없다!!</h1></c:if>
</div>
	<div id="area">
		<div id="joinBox">
			<div>
				<table>
					<tbody>
						<tr>
							<td>
								<h1>[실기TEST] 거래처 관리</h1>
							</td>
							<td>
							<c:if test="${vo eq null }">
								<button type="button" onclick="set()">등록</button>
								<button type="button" onclick="add()">수정</button>
								<button type="button" onclick="del()">삭제</button>
							</c:if>
							<c:if test="${vo ne null }">
								<button type="button" onclick="set1()">등록</button>
								<button type="button" onclick="add1()">수정</button>
								<button type="button" onclick="del1()">삭제</button>
							</c:if>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="selectBox">
				<form id="joinTable" method="post">
					<table>
						<tbody>
							<tr>
								<td>사업자번호</td>
								<td><input id="joinBusi" type="text" name="busi_num"/></td>
							</tr>
							<tr>
								<td>거래처명</td>
								<td><input id="joinCus" type="text" name="custom"/></td>
								<td><button type="button" onclick="join();">조회</button></td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
			<div id="selectList">
				<table>
					<thead>
						<tr>
							<th>사업자번호</th>
							<th>거래처명</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${ vo ne null}">
							<c:forEach var="ar" items="${vo }">
								<tr>
									<td>${ar.busi_num }</td>
									<td>${ar.custom }</td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>	
			</div>
		</div>
		<div id="dex">
		
			<form id="all" method="post">
				<c:if test="${vo ne null}">
					<table>
						<tbody>
							<tr>
								<td>사업자 번호</td>
								<td><input id="setBusi" class="input" type="text" name="busi_num" value="${vo.busi_num }"/></td>
								<td>약칭</td>
								<td><input type="text" class="input" name="sHort" value="${vo.sHort }"/></td>
							</tr>
							<tr>
								<td>거래처명</td>
								<td><input id="setCustom" class="input" type="text" name="custom" value="${vo.custom }"/></td>
							</tr>
							<tr>
								<td>대표자</td>
								<td><input type="text" class="input" name="ceo"/></td>
								<td>담당자</td>
								<td><input type="text" class="input" name="charge_person" value="${vo.charge_person }"/></td>
							</tr>
							<tr>
								<td>업태</td>
								<td><input type="text" class="input" name="busi_condition" value="${vo.busi_condition }"/></td>
								<td>종목</td>
								<td><input type="text" class="input" name="item" value="${vo.item }"/></td>
							</tr>
							<tr>
								<td>우편번호</td>
								<td><input type="text" class="input" name="post_num" value="${vo.post_num }"/><button>검색</button></td>
								<td>주소1</td>
								<td><input type="text" class="input" name="addr1" value="${vo.addr1 }"/></td>
							</tr>
							<tr>
								<td>주소2</td>
								<td><input type="text" class="input" name="addr2" value="${vo.addr2 }"/></td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td><input type="text" class="input" name="tel" value="${vo.tel }"/></td>
								<td>팩스번호</td>
								<td><input type="text" class="input" name="fax" value="${vo.fax }"/></td>
							</tr>
							<tr>
								<td>홈페이지</td>
								<td><input type="text" class="input" name="homepage" value="${vo.homepage }"/></td>
							</tr>
							<tr>
								<td>법인여부</td>
								<td>법인<input type="radio" class="input" name="co_yn" value="0"/> 개인<input type="radio" name="co_yn" value="1"/></td>
								<td>해외여부</td>
								<td>국내<input type="radio" class="input" name="forelgn_yn" value="0"/> 해외<input type="radio" name="forelgn_yn" value="1"/></td>
							</tr>
							<tr>
								<td>과세구분</td>
								<td>
									<select name="tax_yn" class="input">
										<option>선택</option>
										<option value="0">과세/면세</option>
										<option value="1">비과세</option>
									</select>
								</td>
								<td>국가</td>
								<td><input type="text" class="input" name="country_kor" value="${vo.country_kor }"/></td>
								<td><input type="text" class="input" name="country_eng" value="${vo.country_eng }"/></td>
								<td><button type="button">검색</button></td>
							</tr>
							<tr>
								<td>특수과세자</td>
								<td><input type="checkbox" class="input" name="special_relation" value="1" value="${vo.special_relation }"/></td>
								<td>거래중지</td>
								<td><input type="checkbox" class="input" name="trade_stop" value="1" value="${vo.trade_stop }"/></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>등록정보</td>
								<td>
									<input type="text" class="input" name="regi_info_man" value="${vo.regi_info_man }"/>
									<input type="text" class="input" name="regi_info_date" value="${vo.regi_info_date }"/>
								</td>
								<td>변경정보</td>
								<td>
									<input type="text" class="input" name="modi_info_man" value="${vo.modi_info_man }"/>
									<input type="text" class="input" name="modi_info_date" value="${vo.modi_info_date }"/>
								</td>
							</tr>
						</tbody>
					</table>
				</c:if>
				<c:if test="${vo.busi_num  eq null}">
					<table>
						<tbody>
							<tr>
								<td>사업자 번호</td>
								<td><input id="setBusi" class="input1" type="text" name="busi_num"/></td>
								<td>약칭</td>
								<td><input type="text" class="input1" name="sHort"/></td>
							</tr>
							<tr>
								<td>거래처명</td>
								<td><input id="setCustom" class="input1" type="text" name="custom"/></td>
							</tr>
							<tr>
								<td>대표자</td>
								<td><input type="text" class="input1" name="ceo"/></td>
								<td>담당자</td>
								<td><input type="text" class="input1" name="charge_person"/></td>
							</tr>
							<tr>
								<td>업태</td>
								<td><input type="text" class="input1" name="busi_condition"/></td>
								<td>종목</td>
								<td><input type="text" class="input1" name="time"/></td>
							</tr>
							<tr>
								<td>우편번호</td>
								<td><input type="text" class="input1" name="post_num"/><button>검색</button></td>
								<td>주소1</td>
								<td><input type="text" class="input1" name="addr1"/></td>
							</tr>
							<tr>
								<td>주소2</td>
								<td><input type="text" class="input1" name="addr2"/></td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td><input type="text" class="input1" name="tel"/></td>
								<td>팩스번호</td>
								<td><input type="text" class="input1" name="fax"/></td>
							</tr>
							<tr>
								<td>홈페이지</td>
								<td><input type="text" class="input1" name="homepage"/></td>
							</tr>
							<tr>
								<td>법인여부</td>
								<td>법인<input type="radio" class="input1" name="co_yn" checked="checked" value="0"/> 개인<input type="radio" name="co_yn" value="1"/></td>
								<td>해외여부</td>
								<td>국내<input type="radio" class="input1" name="forelgn_yn" checked="checked" value="0"/> 해외<input type="radio" name="forelgn_yn" value="1"/></td>
							</tr>
							<tr>
								<td>과세구분</td>
								<td>
									<select name="tax_yn" class="input1">
										<option value="0">과세/면세</option>
										<option value="1">비과세</option>
									</select>
								</td>
								<td>국가</td>
								<td><input type="text" class="input1" name="country_kor"/></td>
								<td><input type="text" class="input1" name="country_eng"/></td>
								<td><button type="button">검색</button></td>
							</tr>
							<tr>
								<td>특수과세자</td>
								<td><input type="checkbox" class="input1" checked="checked" name="special_relation" value="1"/></td>
								<td>거래중지</td>
								<td><input type="checkbox" class="input1" name="trade_stop" value="1"/></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>등록정보</td>
								<td>
									<input type="text" class="input1" name="regi_info_man"/>
									<input type="text" class="input1" name="regi_info_date"/>
								</td>
								<td>변경정보</td>
								<td>
									<input type="text" class="input1" name="modi_info_man"/>
									<input type="text" class="input1" name="modi_info_date"/>
								</td>
							</tr>
						</tbody>
					</table>
				</c:if>
			</form>
		</div>
	</div>
<form name="del" method="post">
  <input type="hidden" name="busi_num"/>
</form>

</body>

</html>