<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />
  <script type="text/javascript">
  $(document).ready(function(){
	  doGet();
  });
  function doGet(){
	var url = 'http://localhost:9090/webapi/group';
    $.ajax({
        type: 'Get',
        url: url,
        dataType: 'json'
    }).done(function(result){
    	var insertHtml = "";
         $.each(result,function(index, item){
             var name = result[index];
             insertHtml += "<p class='list-group-item'>" + name + " </p>"; 
     	 });
         $("#listDate").html(insertHtml);
    });
}
</script>
<style>	
	p{
		text-align:center;
		font-size:middle;
	}
</style>
<p class="list-group-item active">
		    Active site
		  </p>
		  <div id="listDate"></div>
