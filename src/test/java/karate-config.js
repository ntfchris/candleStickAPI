function fn() {

//Set Property
 var env = karate.env;
 karate.log('karate.env system property was:', env);

 var config = {
   env: env,
   myVarName: 'candleStick',
   baseUrl: 'https://uat-api.3ona.co/v2/public/get-candlestick'
}

 return config;
}