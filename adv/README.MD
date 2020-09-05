# Block, Proc, Lambdas
[nguồn viblo](https://viblo.asia/p/block-proc-va-lambda-trong-ruby-jaqG0lQQGEKw#_2-proc-2)
３thằng này đc là closure, những khối lệnh đóng gói 
Gióngo khái niệm call back trong js 
### Block 
Block thường được bắt đầu:
1. ```{   }``` trong dấu Braces
2. ``` do  end ``` trong ```do``` và ``` end ```
Thằng này ném vào trong 1 menthod. khi menthod gọi nó thì chỉa cần từ khoá ```yield```
```ruby 
def hello 
    p 'hello '
    yield     
end

hello { p ' code trong block'} 
#=> hello 
#=> code trong block
```

Đơn giản, dễ hiểu ,  __Tái sử dụng ko cao__

### Proc và lambda
2 thằng này giống thằng Block, dùng đề ném vào trong hàm. nhưng nó có tính sử dụng cao hơn. vì nó đc gán vào biến <br>
2 thằng này đều thuộc class ```Proc```
<br>
Cách gọi 2 thằng này ta dùng ```call([params])``` hoặc ngắn gọn ```.([params])```
<br>

Ký hiệu ```&``` để hiểu tham số truyền vào là 1proc,  bản chất nó là chuyển symbol thành proc object, và truyền vào cho hàm như 1 block. Ví dụ:

```[1,2,3].map(&:to_s)``` sẽ tương đương với ```[1,2,3].map {|i| i.to_s}```

### Sự khác nhau giưã  Block và Proc (Proc và Lambda) 

Proc (proc và lambda)  là  1 object còn block thì không 

####  Sự khác nhau giữa Proc và Lambda

1. ```lambda```kiểm tra số lượng các tham số của nó nhận và trả về một ```ArgumentError``` nếu số lượng đó không phù hợp với số lượng đối số trong method của nó; <br>
còn Proc thì không, nếu không truyền tham số thì proc mặc định tham số đó bằng ```nil```.


2. Đối với hàm dùng return trong lambda và proc thì với proc thì sẽ return ngay sau khi thực hiện xong proc, còn với lambda thì vẫn tiếp tục chạy hết hàm sau khi gọi xong lambda.

###### Tổng kết 

* Procs là object còn block thì không
* Hầu hết block xuất hiện trong một danh sách các đối số (argument)
* Lambda kiểm tra số lượng đối số còn proc thì không
* Lambda và proc đối xử với return không giống nhau.
