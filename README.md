# README

## MommaDaze Blogging Site

### Blog

    - title:string
    - content:text
    - thumb_image:text

### User
    - Devise

### Admin
    - Petergate
### Post
    - title:string
    - description:text
    - image:text

### User Experience
    - Visit webpage and be able to view most recent blogs
      - includes pagination
        - kaminari
      - An about me page which tells about the author of the blog posts
      - Possibility to Register
        - Receive welcome email when register
        - Able to leave posts once they login

### Admin Experience
    - Able to create, update, or delete blog posts
      - devise
      - petergate
    - Able to delete user posts
    - Able to approve posts that users submit
      - receive email when user submits post.