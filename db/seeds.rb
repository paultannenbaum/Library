genres = Genre.create([
    { name: 'Horror'      },
    { name: 'Sci-Fi'      },
    { name: 'Science'     },
    { name: 'Biographies' },
    { name: 'History'     },
    { name: 'Fantasy'     },
    { name: 'Health'      }])

books = Genre.all.each do | g |
  10.times do | i |
    Book.create(
      title: "#{g.name}: Book number #{i.to_s}",
      author: "John Doe number #{i.to_s}",
      genre_id: g.id
    )
  end
end

chapters = Book.all.each do | b |
  10.times do | i |
    Chapter.create(
        title: "#{b.title}: Chapter #{i.to_s}",
        book_id: b.id
    )
  end
end
