for $book in doc("bookstore.xml")/bookstore/book
where $book/price > 50
return
    <book>
        <category>{ $book/@category }</category>
        <title>{ $book/title }</title>
        <author>{ $book/author }</author>
        <year>{ $book/year }</year>
        <price>{ $book/price }</price>
    </book>
