module.exports = {
  parser: "babel-eslint",
  "plugins": [
    "react"
  ],
  // "root": true,
  "parserOptions": {
    "ecmaVersion": 2017, 
    "ecmaFeatures":{ 
      "jsx": true,
      "arrowFunctions": true,
      "classes": true,
      "modules": true,
    }
  },
  "env": {
    "browser": true,
    "node": true, 
"shared-node-browser": true,
    "es6": true,
    "jquery": true,
    "mongo": true,
    "commonjs":true,
    "jest":true,
  },
  "rules": {
    // allow paren-less arrow functions
    "arrow-parens": 0,
    // allow async-await
    "generator-star-spacing": 0,
    // allow debugger during development
    "no-debugger": process.env.NODE_ENV === "production" ? 2 : 0,
    "no-unused-vars": [1, { 
      // 允许声明未使用变量
      "vars": "local",
      // 参数不检查
      "args": "none" 
    }],
    // 关闭语句强制分号结尾
    "semi": [0],
    //空行最多不能超过100行
    "no-multiple-empty-lines": [0, {"max": 100}],
    //关闭禁止混用tab和空格
    "no-mixed-spaces-and-tabs": [0],
  } 
}
