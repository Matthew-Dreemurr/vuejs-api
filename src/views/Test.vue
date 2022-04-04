<template>
  <div class="test">
    <h1>This is an test page</h1>
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



	//Test query
    const urlParams = new URLSearchParams(window.location.search);
   const name = urlParams.get("name");
    console.log(name);




</script>



