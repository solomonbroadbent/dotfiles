const colors = {
    background: 'hsla(200, 19%, 18%, 1)',
    backgroundOpaque: 'hsla(200, 19%, 18%, 0.75)',
    foreground: 'hsla(200, 15%, 73%, 1)',
    contrast: 'hsla(201, 19%, 15%, 1)',
    text: 'hsla(0, 100%, 100%, 1)',
    textOther: 'hsla(198, 12%, 63%, 1)',
    active: 'hsla(39, 100%, 71%, 1)',
}

const sizes = {
    width: '20vw',
    padding: '0.3rem',
    borderRadius: '0.1rem',
    fontFamily: 'Fira Code',
    fontSize: '0.8rem',
}

export const className = `
    box-sizing: border-box;
    user-select: none;

    margin-top: 60vh;
    background-color: ${colors.backgroundOpaque};
    height: 100px;
    width: ${sizes.width};
    margin-left: ${sizes.padding};
    padding: ${sizes.padding};
    border-radius: ${sizes.borderRadius};
    color: ${colors.text};
    font-family: ${sizes.fontFamily};
    font-size: ${sizes.fontSize};
`;

export const refreshTimeframe = false;

export const render = () => (
    <div>hello</div>
)
