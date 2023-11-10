const btn = document.querySelectorAll("button")
/*console.log(btn)*/
btn.forEach(function(button,index){
	
	/*console.log(button,index)*/
	button.addEventListener("click",function(event){{
		var btnitem = event.target
		var product = btnitem.parentElement
		var productImg = product.querySelector("img").src
		var productName = product.querySelector("div.name").innerText 
		var productPrice = product.querySelector("div.price").innerText
			/*console.log(productImg,productName,productPrice)*/
			
		addcart(productImg,productName,productPrice)
		
	
		
	}})
	
})
// ----------------------------------Thêm sản phẩm vào giỏ hàng----------------------------------

function addcart(productImg,productName,productPrice) {
	var addtr = document.createElement("tr")
	var cartItem = document.querySelectorAll("tbody tr")
	
//	 ----------------------------------Kiểm tra sản phẩm đã có trong giỏ hàng thì không được thêm nữa----------------------------------

	for (var i=0;i<cartItem.length;i++){
		var productT = document.querySelectorAll(".title")
		if(productT[i].innerHTML==productName ) {
		
			alert("Sản phẩm của bạn đã có trong giỏ hàng")
			return 
			
		}
	}
	var trcontent = '<td style="display: flex; align-items:top ;color: #FFFFFF;"><img style="width:70px" src="'+productImg+'" alt=""><span class="title">'+productName+'</span></td><td><p style="color: #FFFFFF;"><span class="prices">'+productPrice+'</span><sup>đ</sup></p></td><td><input style="width: 40px; outlinen: none;" type="number" value="1" min="1"></td><td style="cursor: pointer;color: #FFFFFF;"><span class="cart-delete">Xóa</span></td>'
	addtr.innerHTML = trcontent
	var cartTable = document.querySelector("tbody")
	
	/*console.log(trcontent)*/
	
	cartTable.append(addtr)
	
	carttotal()
	deleteCart()
	
	
	
}

// ----------------------------------tính tổng số tiền trong giỏ hàng----------------------------------

function carttotal (){
	
	var cartItem = document.querySelectorAll("tbody tr")
	/*console.log(cartItem.length)*/
	var totalC = 0
	
for (var i=0;i<cartItem.length;i++){
	var inputValue = cartItem[i].querySelector("input").value
	/*console.log(inputValue)*/
	var productPrice = cartItem[i].querySelector(".prices").innerHTML
	/*console.log(productPrice)*/
	// Tinh tong số lượng + với giá của 1 sản phẩm
	totalA = inputValue*productPrice*1000
/*	totalB = totalA.toLocaleString('de-DE')
	console.log(totalB)*/
	// Tính tổng số lượng sản phẩm 1 + với sp 2
	totalC = totalC + totalA
	console.log(totalC)	
	/*totalD = totalC.toLocaleString('de-DE')*/
}
    var cartTotalA = document.querySelector(".price-total span")
    cartTotalA.innerHTML = totalC.toLocaleString('de-DE')
    /*console.log(cartTotalA)*/
     inputchange ()
}

// ----------------Chức năng xóa sp ra khỏi giỏ hàng----------------------------------

function deleteCart(){
	var cartItem = document.querySelectorAll("tbody tr")
	for (var i=0;i<cartItem.length;i++){
		var productT = document.querySelectorAll(".cart-delete")
		productT[i].addEventListener("click",function(event){
			var cartDelete = event.target
			var cartitemR = cartDelete.parentElement.parentElement
			cartitemR.remove()
			console.log(cartitemR)
			carttotal ()
		})
		
			
		}
	}
	function inputchange (){
			var cartItem = document.querySelectorAll("tbody tr")
	for (var i=0;i<cartItem.length;i++){
		var inputValue = cartItem[i].querySelector("input")
	inputValue.addEventListener("change",function(){
		
		carttotal ()
	})
	
		
			
		}
		
	}
	// Lưu giỏ hàng
	sessionStorage.setItem("addcart" , JSON.parse(addcart));
	
	
	




























