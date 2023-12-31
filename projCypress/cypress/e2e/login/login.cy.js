/// <reference types="cypress" />

context("Acesso a página de login", () => {
    beforeEach(() => {
        cy.visit('https://www.saucedemo.com/')
    });

    it('Login válido', () => {
        cy.get('[data-test="username"]').type('standard_user')
        cy.get('[data-test="password"]').type('secret_sauce')
        cy.get('[data-test="login-button"]').click()
        cy.get('.title').should('contain', 'Products')
    });


})

