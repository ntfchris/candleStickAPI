function fn() {

//Set Property
 var env = karate.env;
 karate.log('karate.env system property was:', env);
 if (!env) {
   env = 'IOS';
 }

//IOS Config
 var config = {
   env: env,
   myVarName: 'MyObservatory',
   baseUrl: 'https://pda.weather.gov.hk/locspc/data/fnd_e.xml'
}
//AOS Config
 if (env == 'Android') {
    config.baseUrl = 'https://pda.weather.gov.hk/locspc/android_data/fnd_e.xml' ;
 }

 return config;
}