# Lambda@Edge를 이용한 Dist 구현
Lambda@Edge를 이용하여 dist를 구현하는 방법에 대한 HOL을 작성하였다. 첨부된 이미지는 저작권의 문제가 발생할 수 있을 것 같으나, 현재는 테스트를 기반으로 하기에 문제가 없을 것으로 생각한다.

이 문서는 기본적으로 AWS를 다룰 줄 안다는 전제로 작성되었으며, AWS를 잘 모르는 분들은 AWS 책을 구매하여 먼저 읽기를 권장한다.

참고한 AWS Blog의 내용을 임의로 수정하였으며, 한국에서 사용할 수 있도록 origin을 seoul bucket으로 만드는 것을 기준으로 만들었다.

이 문서는 누구나 따라하고 사용/재가공을 할 수 있다.

# 참고 URL
https://aws.amazon.com/ko/blogs/networking-and-content-delivery/resizing-images-with-amazon-cloudfront-lambdaedge-aws-cdn-blog/