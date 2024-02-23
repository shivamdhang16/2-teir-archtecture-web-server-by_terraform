resource "aws_lb_target_group" "tg1" {
  name     = "tf-tg-1"
  port     = 80
  protocol = "HTTP"
#   target_type = aws_instance.private_instance.id
  vpc_id   = aws_vpc.myvpc.id
}

resource "aws_lb_target_group_attachment" "tg_attach" {
  target_group_arn = aws_lb_target_group.tg1.arn
  target_id        = aws_instance.private_instance.id
  port             = 80
}

resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_secure.id]
  subnets            = [aws_subnet.public.id,aws_subnet.public_2.id]
  enable_deletion_protection = true

}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = "${aws_lb.test.arn}"
  port              = "80"
  protocol          = "HTTP"
  #ssl_policy        = "ELBSecurityPolicy-2016-08"
  #certificate_arn   = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"

  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.tg1.arn}"
  }
}







