<template>
  <header class="header">
    <!-- Home Button -->
    <router-link to="/" class="home-button">
      <img src="/images/home-icon.png" alt="Home" class="home-icon">
    </router-link>

    <!-- Search Bar -->
    <div class="search-bar">
      <SfInput
        placeholder="Search products..."
        icon="search"
        class="search-input"
      />
    </div>

    <!-- Country Selector -->
    <!-- <SfCountrySelector class="country-selector" /> -->

    <!-- Currency Selector -->
    <!-- <SfCurrencySelector class="currency-selector" /> -->

    <!-- Favorites Selector -->
    <SfIconHome size="xs" />

    <!-- Shopping Cart -->
  </header>
</template>

<script>
// import { SfInput, SfCountrySelector, SfCurrencySelector, SfIcon } from '@storefront-ui/vue';
import { SfInput } from '@storefront-ui/vue';

export default {
  components: {
    SfInput,
  }
}
</script>

<style scoped>
.header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 10px 20px;
  background-color: #f0f0f0;
}

.home-button {
  text-decoration: none;
}

.home-icon {
  width: 30px;
  height: auto;
}

.search-bar {
  flex: 1;
  margin: 0 20px;
}
</style>
