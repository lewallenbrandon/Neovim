#import "@local/minimal-blog:0.10.0":*

#show: minimal-blog.with(
  title: "${filename}",
    author: "Brandon Lewallen",
    date: ${date},
)
= Overview
${cursor}
