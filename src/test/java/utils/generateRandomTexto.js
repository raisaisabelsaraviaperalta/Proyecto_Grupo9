function fn(config) {
  var base = config.baseText || "User";
  var length = config.length || 4;
  var random = Math.random().toString(36).substring(2, 2 + length);
  return base + "_" + random;
}