<template>
  <div id="test">
    <h1>{{ cause }}</h1>
	<p>{{ money }}</p>
  </div>
</template>

<style>
@media (min-width: 1024px) {
  .test {
    min-height: 100vh;
    display: flex;
    align-items: center;
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

	let req = await axios.get('https://streamlabscharity.com/api/v1/causes/' + name)
	console.log(req);
	cause = req.data.display_name;
	money = (req.data.amount_raised / 100);
	money += '€';	
	export default {
		data(){
			return{
				cause: cause,
				money: money,
			}
		}
	}
		//   response => (this.test = response))



</script>



