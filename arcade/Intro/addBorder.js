function addBorder(picture) {
    let startEndStars = ""
    for(let i = 0; i < picture.length; i++) picture[i] = "*" + picture[i] + "*"
    for(let i = 0; i < picture[0].length; i++) startEndStars+= "*"
    picture.unshift(startEndStars)
    picture.push(startEndStars)
    return picture
}
