{- |
Module      : Tests.Lua.Module
Copyright   : © 2019-2025 Albert Krewinkel
License     : GNU GPL, version 2 or above

Maintainer  : Albert Krewinkel <albert+pandoc@tarleb.com>
Stability   : alpha
Portability : portable

Lua module tests
-}
module Tests.Lua.Module (tests) where

import System.FilePath ((</>))
import Test.Tasty (TestName, TestTree)
import Test.Tasty.Lua (testLuaFile)

import Tests.Lua (runLuaTest)

tests :: [TestTree]
tests =
  [ testPandocLua "pandoc"
                  ("lua" </> "module" </> "pandoc.lua")
  , testPandocLua "pandoc.List"
                  ("lua" </> "module" </> "pandoc-list.lua")
  , testPandocLua "pandoc.format"
                  ("lua" </> "module" </> "pandoc-format.lua")
  , testPandocLua "pandoc.image"
                  ("lua" </> "module" </> "pandoc-image.lua")
  , testPandocLua "pandoc.json"
                  ("lua" </> "module" </> "pandoc-json.lua")
  , testPandocLua "pandoc.log"
                  ("lua" </> "module" </> "pandoc-log.lua")
  , testPandocLua "pandoc.mediabag"
                  ("lua" </> "module" </> "pandoc-mediabag.lua")
  , testPandocLua "pandoc.path"
                  ("lua" </> "module" </> "pandoc-path.lua")
  , testPandocLua "pandoc.structure"
                  ("lua" </> "module" </> "pandoc-structure.lua")
  , testPandocLua "pandoc.template"
                  ("lua" </> "module" </> "pandoc-template.lua")
  , testPandocLua "pandoc.text"
                  ("lua" </> "module" </> "pandoc-text.lua")
  , testPandocLua "pandoc.types"
                  ("lua" </> "module" </> "pandoc-types.lua")
  , testPandocLua "pandoc.utils"
                  ("lua" </> "module" </> "pandoc-utils.lua")
  , testPandocLua "globals"
                  ("lua" </> "module" </> "globals.lua")
  ]

testPandocLua :: TestName -> FilePath -> TestTree
testPandocLua = testLuaFile runLuaTest
