<template>
  <div id="test">
    <h1>{{ cause }}</h1>
	<h2>{{ money }}</h2>
  </div>
</template>

<style>
@media (min-width: 1024px) {
  .test {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
  h1 {
	  color: #fff;
  }
}
</style>
<script>
import axios from "axios";


	//Test query
	let cause;
	let money;
    const urlParams = new URLSearchParams(window.location.search);
   const name = urlParams.get("name");
    console.log(name);
	if (name){

	let req = await axios.get('https://streamlabscharity.com/api/v1/causes/' + name)
	console.log(req);
	cause = req.data.display_name;
	money = (req.data.amount_raised / 100);
	money += '€';	
		//   response => (this.test = response))

	} else {
		cause = "_cause";
		money = "_money";
	}
	export default {
		data(){
			return{
				cause: cause,
				money: money,
			}
		}
	}


</script>



