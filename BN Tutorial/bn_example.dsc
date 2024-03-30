belief network "unknown"
node Sleep {
  type : discrete [ 2 ] = { "True", "False" };
}
node Happy {
  type : discrete [ 2 ] = { "True", "False" };
}
node Donate {
  type : discrete [ 2 ] = { "True", "False" };
}
node Volunteer {
  type : discrete [ 2 ] = { "True", "False" };
}
probability ( Sleep ) {
   0.7, 0.3;
}
probability ( Happy | Sleep ) {
  (0) : 0.8, 0.2;
  (1) : 0.4, 0.6;
}
probability ( Donate | Happy ) {
  (0) : 0.5, 0.5;
  (1) : 0.1, 0.9;
}
probability ( Volunteer | Happy ) {
  (0) : 0.6, 0.4;
  (1) : 0.2, 0.8;
}
