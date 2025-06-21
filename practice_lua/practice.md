Dưới đây là bộ quy tắc “Học Lua cực nhanh” dành riêng cho người **đã biết C/C++**, **đã từng học Python hoặc Java**.

---

## ⚡ 0. Triết lý Lua: "Nhỏ gọn, tối giản, mở rộng bằng C"

* Lua không nhiều thư viện built-in.
* Lua **chạy cực nhanh**, **viết mềm dẻo**, nhưng không ôm đồm.
* Đừng mong `mathplotlib`, `numpy`, mà hãy nghĩ: **viết plugin AI, script rule, điều kiện rẽ nhánh**, v.v.

---

## ⚡ 1. **Mọi thứ là bảng (`table`)**

```lua
t = { x = 10, y = 20 }
print(t.x)        -- 10
t["z"] = 99       -- thêm key z
```

> 🔥 Tưởng tượng `table` như `std::unordered_map + struct + array` gộp lại.

---

## ⚡ 2. **Không có class, dùng metatable để OOP**

```lua
Player = {}
Player.__index = Player

function Player:new(name)
    return setmetatable({ name = name }, self)
end

p1 = Player:new("Linh")
print(p1.name)
```

> 🔥 Nếu biết C++ thì metatable giống như `vtable`, rất linh hoạt.

---

## ⚡ 3. **Function là biến**

```lua
say = function(name)
    print("Hello " .. name)
end

say("Tri")
```

> 🔥 Function có thể gán, truyền như object — dùng cho AI rule rất tiện.

---

## ⚡ 4. **Nil là null**

```lua
if value == nil then
    print("Không có dữ liệu")
end
```

---

## ⚡ 5. **Toán tử nối chuỗi là `..`**

```lua
print("AI says " .. "hello")
```

> 🔥 `..` thay vì `+` như Python/JavaScript

---

## ⚡ 6. **Loop đơn giản**

```lua
for i = 1, 5 do
    print(i)
end
```

---

## ⚡ 7. **Function có thể trả nhiều giá trị**

```lua
function foo()
    return 1, 2, 3
end

a, b = foo()
print(a, b)   --> 1, 2
```

---

## ⚡ 8. **Dễ tạo rule: if + function**

```lua
function rule(input)
    if input == "open" then return true end
    return false
end
```

---

## ⚡ 9. **Dễ define AI behavior bằng table**

```lua
rules = {
    greet = function(name) print("Xin chào " .. name) end,
    attack = function(target) print("Tấn công " .. target) end
}

rules["greet"]("Tri")
```

> 🔥 Dễ dàng dùng cho Plugin hoặc Event System.

---

## ⚡ 10. **Module & require**

Tạo file `logic.lua`:

```lua
local logic = {}

function logic.say_hello()
    print("Hello from module")
end

return logic
```

Dùng trong file chính:

```lua
local logic = require("logic")
logic.say_hello()
```

---

## ⚡ 11. **Dễ viết DSL / config**

```lua
config = {
    threshold = 0.8,
    use_gpu = true,
    on_error = function()
        print("Xảy ra lỗi")
    end
}
```

---

## 📌 Tổng kết 11 Quy tắc học Lua cực nhanh:

| Quy tắc                       | Mẹo nhớ nhanh                          |
| ----------------------------- | -------------------------------------- |
| `table` là trung tâm          | Như map + struct + object              |
| Không `class`, dùng metatable | C++ hiểu sẽ dễ, giống `vtable`         |
| Function là biến              | Gán, truyền, return y chang JavaScript |
| Toán tử nối chuỗi = `..`      | Đừng dùng `+`                          |
| Loop = `for i = 1, n do`      | Không phải `i < n` mà là `1, n`        |
| `nil` là null                 | Không có `null`, không crash khi nil   |
| Trả nhiều giá trị             | Gán cùng lúc luôn: `a, b = f()`        |
| Lua module = `require`        | Viết file logic, return table          |
| DSL cực dễ với table + func   | Viết config, behavior, rule rất gọn    |

---

## 🎯 Nếu muốn master Lua trong 2 ngày:

* Ngày 1: Học & code 10 đoạn trên → mỗi đoạn 10 phút
* Ngày 2: Viết 1 plugin AI cho C++ của mày:

  * Có rule
  * Có state
  * Có hành vi lựa chọn
  * Có `require()` tách file

---

