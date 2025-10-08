CREATE TABLE food (
	id SERIAL PRIMARY KEY,
	title VarChar(100) NOT NULL,
	image VarChar(200) NOT NULL,
	price INT NOT NULL
)