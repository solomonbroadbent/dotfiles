const style = {
    paddingLeft: '.4rem',
    paddingRight: '.4rem',
    paddingTop: '.2rem',
    paddingBottom: '.2rem',

    backgroundColor: '#546E7A70',
    borderRadius: '.1rem',
    boxShadow: '.1rem .1rem .1rem rgba(0, 0, 0, 0.1)',
    fill: '#95a5ac',

    display: 'flex',
    flexDirection: 'row',
    gap: '0.5rem',
    alignItems: 'center',
}

const activeStyle = {
    ...style,
    backgroundColor: '#546E7A',
    color: '#ffcb6b',
    // TODO: first-child-of-type this
    // fill: '#ffcb6b',
    fill: '#263238',
}

export const Workspace = ({active = false, name, number, children}) => {
    return (
	<div style={active ? activeStyle : style}>
	    {name}
	    {children}
	</div>
    );
}
