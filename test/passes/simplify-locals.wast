(module
  (memory 256 256)
  (import $waka "env" "waka")
  (import $waka_int "env" "waka_int" (result i32))
  (import $_i64Subtract "env" "i64sub" (param i32 i32 i32 i32) (result i32))
  (import $___udivmoddi4 "env" "moddi" (param i32 i32 i32 i32 i32) (result i32))
  (func $b0-yes (param $i1 i32)
    (local $x i32)
    (local $y i32)
    (local $a i32)
    (local $b i32)
    (set_local $x (i32.const 5))
    (get_local $x)
    (block
      (set_local $x (i32.const 7))
      (get_local $x)
    )
    (set_local $x (i32.const 11))
    (get_local $x)
    (set_local $x (i32.const 9))
    (get_local $y)
    (block
      (set_local $x (i32.const 8))
      (get_local $y)
    )
    (set_local $x (i32.const 11))
    (get_local $y)
    (set_local $x (i32.const 17))
    (get_local $x)
    (get_local $x)
    (get_local $x)
    (get_local $x)
    (get_local $x)
    (get_local $x)
    (block
      (set_local $a (i32.const 1))
      (set_local $b (i32.const 2))
      (get_local $a)
      (get_local $b)
      (set_local $a (i32.const 3))
      (set_local $b (i32.const 4))
      (set_local $a (i32.const 5))
      (set_local $b (i32.const 6))
      (get_local $b)
      (get_local $a)
      (set_local $a (i32.const 7))
      (set_local $b (i32.const 8))
      (set_local $a (i32.const 9))
      (set_local $b (i32.const 10))
      (call_import $waka)
      (get_local $a)
      (get_local $b)
      (set_local $a (i32.const 11))
      (set_local $b (i32.const 12))
      (set_local $a (i32.const 13))
      (set_local $b (i32.const 14))
      (i32.load
        (i32.const 24)
      )
      (get_local $a)
      (get_local $b)
      (set_local $a (i32.const 15))
      (set_local $b (i32.const 16))
      (set_local $a (i32.const 17))
      (set_local $b (i32.const 18))
      (i32.store
        (i32.const 48)
        (i32.const 96)
      )
      (get_local $a)
      (get_local $b)
    )
    (block
      (set_local $a (call_import $waka_int))
      (get_local $a) ;; yes
      (call_import $waka)

      (set_local $a (call_import $waka_int))
      (call_import $waka)
      (get_local $a) ;; no
      (call_import $waka)

      (set_local $a (call_import $waka_int))
      (i32.load (i32.const 1))
      (get_local $a) ;; no
      (call_import $waka)

      (set_local $a (call_import $waka_int))
      (i32.store (i32.const 1) (i32.const 2))
      (get_local $a) ;; no
      (call_import $waka)

      (set_local $a (i32.load (i32.const 100)))
      (get_local $a) ;; yes
      (call_import $waka)

      (set_local $a (i32.load (i32.const 101)))
      (i32.load (i32.const 1))
      (get_local $a) ;; yes
      (call_import $waka)

      (set_local $a (i32.load (i32.const 102)))
      (call_import $waka)
      (get_local $a) ;; no
      (call_import $waka)

      (set_local $a (i32.load (i32.const 103)))
      (i32.store (i32.const 1) (i32.const 2))
      (get_local $a) ;; no
      (call_import $waka)

      (set_local $a (i32.store (i32.const 104) (i32.const 105)))
      (get_local $a) ;; yes
      (call_import $waka)

      (set_local $a (i32.store (i32.const 106) (i32.const 107)))
      (call_import $waka)
      (get_local $a) ;; no
      (call_import $waka)

      (set_local $a (i32.store (i32.const 108) (i32.const 109)))
      (i32.load (i32.const 1))
      (get_local $a) ;; no
      (call_import $waka)

      (set_local $a (i32.store (i32.const 110) (i32.const 111)))
      (i32.store (i32.const 1) (i32.const 2))
      (get_local $a) ;; no
      (call_import $waka)
    )
    (block $out-of-block
      (set_local $a (i32.const 1337))
      (block $b
        (block $c
          (br $b)
        )
        (set_local $a (i32.const 9876))
      )
      (get_local $a)
    )
    (block $loopey
      (set_local $a (i32.const 1337))
      (loop
        (get_local $a)
        (set_local $a (i32.const 9876))
      )
      (get_local $a)
    )
  )
  (func $Ia (param $a i32) (result i32)
    (local $b i32)
    (block $switch$0
      (block $switch-default$6
        (set_local $b
          (i32.const 60)
        )
      )
    )
    (return
      (get_local $b)
    )
  )
  (func $memories (param $i2 i32) (param $i3 i32) (param $bi2 i32) (param $bi3 i32) (param $ci3 i32) (param $di3 i32)
    (local $set_with_no_get i32)
    (set_local $i3
      (i32.const 1)
    )
    (i32.store8
      (get_local $i2)
      (get_local $i3)
    )
    (set_local $bi3
      (i32.const 1)
    )
    (i32.store8
      (get_local $bi3)
      (get_local $bi3)
    )
    (set_local $ci3
      (get_local $bi3)
    )
    (i32.store8
      (get_local $bi3)
      (get_local $ci3)
    )
    (set_local $di3
      (set_local $bi3 (i32.const 123))
    )
    (i32.store8
      (get_local $bi3)
      (get_local $di3)
    )
    (set_local $set_with_no_get (i32.const 456))
  )
  (func $___remdi3 (param $$a$0 i32) (param $$a$1 i32) (param $$b$0 i32) (param $$b$1 i32) (result i32)
    (local $$1$1 i32)
    (local $$1$0 i32)
    (local $$rem i32)
    (local $__stackBase__ i32)
    (local $$2$1 i32)
    (local $$2$0 i32)
    (local $$4$1 i32)
    (local $$4$0 i32)
    (local $$10$1 i32)
    (local $$10$0 i32)
    (local $$6$0 i32)
    (set_local $__stackBase__
      (i32.load
        (i32.const 8)
      )
    )
    (i32.store
      (i32.const 8)
      (i32.add
        (i32.load
          (i32.const 8)
        )
        (i32.const 16)
      )
    )
    (set_local $$rem
      (get_local $__stackBase__)
    )
    (set_local $$1$0
      (i32.or
        (i32.shr_s
          (get_local $$a$1)
          (i32.const 31)
        )
        (i32.shl
          (if
            (i32.lt_s
              (get_local $$a$1)
              (i32.const 0)
            )
            (i32.const -1)
            (i32.const 0)
          )
          (i32.const 1)
        )
      )
    )
    (set_local $$1$1
      (i32.or
        (i32.shr_s
          (if
            (i32.lt_s
              (get_local $$a$1)
              (i32.const 0)
            )
            (i32.const -1)
            (i32.const 0)
          )
          (i32.const 31)
        )
        (i32.shl
          (if
            (i32.lt_s
              (get_local $$a$1)
              (i32.const 0)
            )
            (i32.const -1)
            (i32.const 0)
          )
          (i32.const 1)
        )
      )
    )
    (set_local $$2$0
      (i32.or
        (i32.shr_s
          (get_local $$b$1)
          (i32.const 31)
        )
        (i32.shl
          (if
            (i32.lt_s
              (get_local $$b$1)
              (i32.const 0)
            )
            (i32.const -1)
            (i32.const 0)
          )
          (i32.const 1)
        )
      )
    )
    (set_local $$2$1
      (i32.or
        (i32.shr_s
          (if
            (i32.lt_s
              (get_local $$b$1)
              (i32.const 0)
            )
            (i32.const -1)
            (i32.const 0)
          )
          (i32.const 31)
        )
        (i32.shl
          (if
            (i32.lt_s
              (get_local $$b$1)
              (i32.const 0)
            )
            (i32.const -1)
            (i32.const 0)
          )
          (i32.const 1)
        )
      )
    )
    (set_local $$4$0
      (call_import $_i64Subtract
        (i32.xor
          (get_local $$1$0)
          (get_local $$a$0)
        )
        (i32.xor
          (get_local $$1$1)
          (get_local $$a$1)
        )
        (get_local $$1$0)
        (get_local $$1$1)
      )
    )
    (set_local $$4$1 ;; first this moves, then $$4$0 should be able to move
      (i32.load
        (i32.const 168)
      )
    )
    (call_import $___udivmoddi4
      (get_local $$4$0)
      (get_local $$4$1)
      (call_import $_i64Subtract
        (i32.xor
          (get_local $$2$0)
          (get_local $$b$0)
        )
        (i32.xor
          (get_local $$2$1)
          (get_local $$b$1)
        )
        (get_local $$2$0)
        (get_local $$2$1)
      )
      (i32.load
        (i32.const 168)
      )
      (get_local $$rem)
    )
    (set_local $$10$0
      (call_import $_i64Subtract
        (i32.xor
          (i32.load
            (get_local $$rem)
          )
          (get_local $$1$0)
        )
        (i32.xor
          (i32.load offset=4
            (get_local $$rem)
          )
          (get_local $$1$1)
        )
        (get_local $$1$0)
        (get_local $$1$1)
      )
    )
    (set_local $$10$1
      (i32.load
        (i32.const 168)
      )
    )
    (i32.store
      (i32.const 8)
      (get_local $__stackBase__)
    )
    (return
      (block
        (i32.store
          (i32.const 168)
          (get_local $$10$1)
        )
        (get_local $$10$0)
      )
    )
  )
  (func $block-returns
    (local $x i32)
    (block $out
      (block $waka
        (set_local $x (i32.const 12))
        (br_if $waka
          (i32.const 1)
        )
        (set_local $x (i32.const 34))
      )
      (br_if $out ;; barrier
        (i32.const 1)
      )
      (get_local $x) ;; a use, so setlocals are not all killed
      (block $waka2
        (if
          (i32.const 1)
          (set_local $x (i32.const 13))
          (set_local $x (i32.const 24))
        )
        (if
          (i32.const 1)
          (block
            (set_local $x (i32.const 14))
          )
          (block
            (set_local $x (i32.const 25))
          )
        )
      )
      (br_if $out ;; barrier
        (i32.const 1)
      )
      (block $sink-out-of-me-i-have-but-one-exit
        (set_local $x (i32.const 99))
      )
      (get_local $x)
    )
  )
  (func $multiple (param $s i32) (param $r i32) (param $f i32) (param $p i32) (param $t i32) (param $m i32)
    (set_local $s
      (get_local $m)
    )
    (set_local $r
      (i32.add
        (get_local $f)
        (get_local $p)
      )
    )
    (set_local $t ;; t is equal to p's original value; p must not be set to before t gets that value
      (get_local $p)
    )
    (set_local $p
      (i32.load
        (i32.const r)
      )
    )
    (i32.store
      (get_local $r)
      (get_local $t)
    )
    (get_local $s)
    (get_local $t)
  )
  (func $switch-def (param $i3 i32) (result i32)
    (local $i1 i32)
    (set_local $i1
      (i32.const 10)
    )
    (block $switch$def
      (block $switch-case$1
        (br_table $switch-case$1 $switch$def
          (get_local $i3)
        )
      )
      (set_local $i1
        (i32.const 1)
      )
    )
    (return
      (get_local $i1)
    )
  )
  (func $through-if
    (local $x i32)
    (local $y i32)
    (local $z i32)
    (local $w i32)
    (set_local $x (i32.const 1)) ;; sink this
    (if (i32.const 0)
      (i32.const 0)
    )
    (get_local $x)
    (set_local $y (i32.const 2)) ;; but not this
    (if (i32.const 0)
      (get_local $y)
    )
    (get_local $y)
    (set_local $z (i32.const 3)) ;; nor this
    (if (i32.const 0)
      (get_local $z)
      (get_local $z)
    )
    (get_local $z)
    (set_local $z (i32.const 4)) ;; nor this
    (if (i32.const 0)
      (i32.const 0)
      (get_local $z)
    )
    (get_local $z)
    (set_local $z (i32.const 5)) ;; nor this
    (if (i32.const 0)
      (get_local $z)
      (i32.const 0)
    )
    (get_local $z)
    ;; and not from inside an if either
    (if (i32.const -6)
      (set_local $w (i32.const 6))
    )
    (get_local $w)
    (if (i32.const -7)
      (set_local $w (i32.const 7))
      (set_local $w (i32.const 8))
    )
    (get_local $w)
    (if (i32.const -9)
      (i32.const 0)
      (set_local $w (i32.const 9))
    )
    (get_local $w)
    (if (i32.const -10)
      (set_local $w (i32.const 10))
      (i32.const 0)
    )
    (get_local $w)
    ;; if-else, sink this
    (set_local $z (i32.const 11))
    (if (i32.const -11)
      (i32.const 0)
      (i32.const 0)
    )
    (get_local $z)
  )
)

