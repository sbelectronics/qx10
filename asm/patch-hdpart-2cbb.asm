       .ORG 2CBBh

       inc a                 ; increment a before storing sector
       out ($83), a          ; store sector number
       ; next addr is addr 2cbd
