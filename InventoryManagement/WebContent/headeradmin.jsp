<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<body >

        <nav class="navbar navbar-expand-lg navbar-light  static-top mt-1; " style=" box-shadow: 1px 1px 0 1px #eee;margin-top:3px;height:50px;padding-top:0px;">

  <div class="container">

      

    <a class="navbar-brand mr-5" href="#">

          <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAAqCAMAAABm11LeAAAAk1BMVEX////lFjVlYmLkACHkACz2wsbkBi7rYnDkACVgXV3td4LkAChYVVXlEjPlDjHxmqHg4ODkABz87O3ypKv52Np5d3fAv7/30NDiAADjAAzscXryrK/p6enwkZqYl5fnO1C2tbXpVGWtrKzpTVv3ys7uhIuOjY3Lycn+9PXnMkjvi5JNSUlua2vqXGnU1NT74uT0tbnRGLpiAAADf0lEQVRYhe2W2ZaiMBCG2QVCUFxBabFVbFzx/Z9uqkLCNjAyjtqeM/3fUCkqqY+kkiBJg98kvYEGR6emSeeeluWsn4XlKFVZnbGgp/W/YVknFCPKrN07YHEtLUVxQt4Ip1Vlm+BrVdKlwBpcmJ6yUypYWMxlHTHlyal5ONZa7Bkl/FOCR2CxeuMEYDkwN9OyzzrxKGtV1GbnovwnrMlyh1pyrDXyWUuuUGAtFT5VqBdgWVPeOBVYua+IWich6uK8DitkZ75VYDmVsq7sxIn1MqysmJV3w1rl91H4TljhFxf63wVrWQ1gWF/fjqVYu0IcS1HWQtNvwAqP5aPTOl5yLOFydi/CgqvlmN8eu/JF47DlDMsuy8qwiv+tCd4Hj8eairO71OTimcPdpCRAHZzguRIfgs7HY/3oRw/X8KPfqNGwrUeCr6815widHdKlmG52O27sk0aZvt72IQEh3rzmjFRikg5YOnQORh2wPLlZ1EtasFRZ1upYG1emtAPWFjqbXbFcDUUZDVoGWl7LXLdhkUdjuRsbFMvAReUYzB75ayzD67XM7t1YJCvWK3ZZMDPWBNawV9J8VmAlc+5kNRipujQGLrtXiR9nA+eOs61xLL2I+txKs3IvO+VYH6y3DvnUDGtkCqw9MQpp/jbHOpvCh10OkjQP6uHwDrn6gcbbZD/js5X6wmeoZynJI1hUMLyFZXuakAsLa2w4VrwIhM/dsxnxiIyzhh4tL1WtBz6TivL1x2IRt2ynGeAjNJEiM8+CseRwAyvt2bkwoxtlWAb3RwaWI5sRSgWWlr2TwTQ+wRcgQISuq1TBImyUVNrOiyxY4Fp8cxFLcmmOlZc8jMJw8IAQWEH2KoUxjHOGRfe1kkcszW6o9dTrgrVdcF1Zyt+wIrcVK4H5E1jupgGL5NeCLrLA9umCpfsml588D6svsqhaN6wYDjAjQD0T6wwVSlgWVUq6YB0IjDxMUU9cRMDSYp6lKxbEFAh3Y0U8ftaCxY9xqdsiAhbdf3LJ8t1YcLhx0WYsGoksbjcsmYrT914sD49I6jKh2VhbIgs7jgHLV9XgkGGB6XMsNAFrAc+yPDh/huDzenzEvad6+J8VwVPN2qrPscD0sKb6tUF8xMK0H3yQOKgGBLaU6KDsRh2imTIzRRP/T2d6VXAnsh7iqN1io+HJPlPEjWuDpJVcoldJ41/QaYBizRF6OAAAAABJRU5ErkJggg==" alt="">
          

        </a>

      
 
  
    <div class="collapse navbar-collapse" id="navbarResponsive">

      <ul class="navbar-nav ml-auto">

        

        

       
<li class="nav-item">

          <a class="nav-link" href="#">Hello Admin !</a>

        </li>
           <li class="nav-item">

          <a class="nav-link" href="https://forms.techmahindra.com/pages/contact%20us/default.aspx" target="_blank">Contact Us</a>

        </li>
         <% if(session.getAttribute("adlogin")=="yes") {
        out.println(" <li class='nav-item'><a class='nav-link' href='adminlogout.jsp' >Log out</a></li>");
        }%>

      </ul>

    </div>

  </div>

</nav>
