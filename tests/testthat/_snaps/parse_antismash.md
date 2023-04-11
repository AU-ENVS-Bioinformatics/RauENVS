# parsing regions work

    Code
      get_antismash_regions(get_antismash_features(json))
    Output
      # A tibble: 12 x 7
         file  location          type   contig_edge product      contig bgc_id    
         <chr> <chr>             <chr>  <lgl>       <named list> <chr>  <chr>     
       1 1     [292344:342785]   region FALSE       <chr [2]>    ""     .region001
       2 1     [999349:1105105]  region FALSE       <chr [2]>    ""     .region002
       3 1     [1222307:1263002] region FALSE       <chr [1]>    ""     .region003
       4 1     [1347426:1367554] region FALSE       <chr [1]>    ""     .region004
       5 1     [1397403:1532936] region FALSE       <chr [3]>    ""     .region005
       6 1     [1724843:1834411] region FALSE       <chr [4]>    ""     .region006
       7 1     [2053604:2141836] region FALSE       <chr [1]>    ""     .region007
       8 1     [2448155:2468896] region FALSE       <chr [1]>    ""     .region008
       9 1     [2553885:2595130] region FALSE       <chr [1]>    ""     .region009
      10 1     [2824697:2865819] region FALSE       <chr [1]>    ""     .region010
      11 1     [3163092:3228500] region FALSE       <chr [1]>    ""     .region011
      12 1     [3855452:3896871] region FALSE       <chr [1]>    ""     .region012

# parsing modules work

    Code
      get_antismash_modules(get_antismash_features(json))
    Output
      # A tibble: 132 x 6
         file  location          complete type    iterative contig
         <chr> <chr>             <lgl>    <chr>   <lgl>     <chr> 
       1 1     [295017:295515]   FALSE    unknown FALSE     ""    
       2 1     [312427:312892]   FALSE    unknown FALSE     ""    
       3 1     [314517:315729]   FALSE    nrps    FALSE     ""    
       4 1     [316751:316937]   FALSE    unknown FALSE     ""    
       5 1     [317020:320092]   TRUE     nrps    FALSE     ""    
       6 1     [320134:324067]   TRUE     nrps    FALSE     ""    
       7 1     [1019210:1020041] FALSE    pks     FALSE     ""    
       8 1     [1022529:1022739] FALSE    unknown FALSE     ""    
       9 1     [1022816:1023860] FALSE    nrps    FALSE     ""    
      10 1     [1024165:1024666] FALSE    unknown FALSE     ""    
      # ... with 122 more rows

