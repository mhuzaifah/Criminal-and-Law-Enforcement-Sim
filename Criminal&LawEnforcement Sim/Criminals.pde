//By: Muhammad Huzaifah

void setup(){
                               //( name , street name , strength out of 10, intelligence out of 10, coldbloodedness out of 5, speed out of 10 )
  Criminal ronald = new Criminal( "Ronald Dunham", "Strike", 4, 7, 1, 7);
  Criminal rodney = new Criminal( "Rodney Little", "God Father", 7, 9, 4, 6);
  Criminal pablo = new Criminal( "Pablo Hernandez", "El Chapo", 2, 8, 4, 2);
  Criminal nigel = new Criminal( "Nigel Rivers", "The Serpent", 1, 2, 1, 10);
  Criminal ahmed = new Criminal( "Ikeremah Khan", "Psycho", 6, 5, 5, 6);
  Criminal ben = new Criminal( "Ben Foster", "Silent Assasin", 8, 10, 5, 9);
  Criminal bruce = new Criminal( "Bruce Banner", "Hulk", 10, 1, 3, 8);
  Criminal yu = new Criminal( "Yu Seong-Ju", "The Doctor", 1, 10, 2, 1);
  Criminal jamal = new Criminal( "Jamal Crawford", "Dope Boy", 7, 7, 3, 5);
  Criminal johan = new Criminal( "Johan Liebert", "Monster", 5, 10, 5, 5);
  Criminal aizen = new Criminal( "Sosuke Aizen", "Smooth Criminal", 10, 10, 5, 10);
  
  println( "---------" );
  println( "Criminals" );
  println( "---------" );
  println();
  
  pablo.description();
  ronald.description();
  rodney.description();
  nigel.description();
  ahmed.description();
  ben.description();
  bruce.description();
  yu.description();
  jamal.description();
  johan.description();
  aizen.description();
                                          //( name , occupation , intelligence out of 10, experience out of 5, speed out of 10 ) **Occupation must be either "Police", "Detective", or "FBI"**
  LawEnforcement rocco = new LawEnforcement( "Rocco Klien", "Detective", 6, 1, 3 );
  LawEnforcement calvin = new LawEnforcement( "Calvin Richards", "Police", 5, 2, 8 );
  LawEnforcement gordon = new LawEnforcement( "Officer Gordon", "Detective", 9, 5, 6 );
  LawEnforcement agent5 = new LawEnforcement( "Agent 5", "FBI", 8, 3, 7 );
  LawEnforcement larry = new LawEnforcement( "Larry Saunders", "Police", 7, 3, 3 );
  LawEnforcement agent007 = new LawEnforcement( "Agent 007", "FBI", 10, 4, 10 );
  
  println( "---------------" );
  println( "Law Enforcement" );
  println( "---------------" );
  println();
  
  rocco.description();
  calvin.description();
  gordon.description();
  agent5.description();
  larry.description();
  agent007.description();
  
  Gang purpleDragons = new Gang( "Purple Dragons" );
  Gang tmnt = new Gang( "TMNT" );
  
  purpleDragons.addMember( ronald );
  purpleDragons.addMember( ahmed );
  purpleDragons.addMember( bruce );
  purpleDragons.addMember( johan );
  purpleDragons.addMember( rodney );
  tmnt.addMember( ben );
  tmnt.addMember( nigel );
  tmnt.addMember( jamal );
  tmnt.addMember( pablo );
  tmnt.addMember( yu );
  tmnt.addMember( aizen );
  
  purpleDragons.printMembers();
  tmnt.printMembers();
  
  // Functions for criminals: pickPocket(LawEnforcement), assault(LawEnforcement), burglary(LawEnforcement), fraud(LawEnforcement), drugTraffic(LawEnforcement), murder(LawEnforcement)
  //                          fight(Criminal), snitch()
  
  // Functions for law enforcement: arrest(Criminal)
  
  // Functions for a gang: brawl(Gang)
  
  ronald.pickPocket( gordon );
  ahmed.assault( calvin );
  aizen.murder( agent007 );
  johan.fraud( larry );
  ben.burglary( gordon );
  nigel.murder( agent007 );
  yu.fraud( larry );
  pablo.drugTraffic( agent5 );
  jamal.assault( calvin );
  rodney.drugTraffic( agent007 );
  rodney.snitch();
  ahmed.snitch();
  bruce.assault( gordon );
  ronald.fight( rodney );
  aizen.fight( ben );
  ben.fight( nigel );
  jamal.fight( johan );
  nigel.assault( agent5 );
  ahmed.fight( yu );
  ben.pickPocket( rocco );
  aizen.burglary( calvin );
  johan.murder( gordon );
  jamal.drugTraffic( calvin );
  pablo.fight( rodney );
  agent5.arrest( nigel );
  nigel.snitch();
  agent007.arrest( johan );
  rocco.arrest( ronald );
  gordon.arrest( jamal );
  agent5.arrest( ben );
  calvin.arrest( aizen );
  larry.arrest( yu );
  purpleDragons.brawl( tmnt );
  
  println( "---------" );
  println( "Criminals" );
  println( "---------" );
  println();
  
  pablo.summary();
  ronald.summary();
  rodney.summary();
  nigel.summary();
  ahmed.summary();
  ben.summary();
  bruce.summary();
  yu.summary();
  jamal.summary();
  johan.summary();
  aizen.summary();
  
  println( "---------------" );
  println( "Law Enforcement" );
  println( "---------------" );
  println();  
  
  rocco.summary();
  calvin.summary();
  gordon.summary();
  agent5.summary();
  larry.summary();
  agent007.summary();

  
}
