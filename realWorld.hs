ioActions :: [IO ()]
ioActions = [(print "Hello!"),
             (putStr "just kidding"),
             (getChar >> return ())
            ]

main = do head ioActions
          ioActions !! 1
          last ioActions