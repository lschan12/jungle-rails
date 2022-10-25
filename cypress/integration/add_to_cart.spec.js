describe('Jungle', () => {
  beforeEach(() => {
    // Cypress starts out with a blank slate for each test
    // so we must tell it to visit our website with the `cy.visit()` command.
    // Since we want to visit the same URL at the start of all our tests,
    // we include it in our beforeEach function so that it runs before each test
    cy.visit('/')
  })
  it("should add product to cart when clicking add to cart button", () => {
    cy.get(".products article")
      .first()
      .find('button') 
      .click({ force: true})
    cy.get("[href='/cart']")
      .contains("(1)")
  });
})