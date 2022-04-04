export const refreshFrequency = false;
export const className = `
    box-sizing: border-box;
    user-select: none;
    width: content;
    // height: 96.25vh;
    height: 40vh;
    margin-top: 2.5rem;
    margin-left: 0.25rem;
    border-radius: 0.1rem;

    background-color: hsla(200, 19%, 18%, 0.75);
    color: white;

    font-family: 'Fira Code';
    font-size: 0.8rem;

    .content {
	display: flex;
	flex-direction: column;
	gap: 0.5rem;
	padding: 0.3rem;
    }

    .progress-bar {
	width: 20vw;

	border-style: solid;
	border-width: 0.1rem;
	border-color: #546E7A70;
    }

    .progress-bar_fill {
	background-color: #95a5ac;
	height: 1rem;
    }

    .list {
	font-size: 0.75rem;
	display: grid;
	gap: 0.3rem;
	color: #95a5ac;
	margin-top: 0.3rem;
    }

    .list_item {
	display: flex;
	flex-direction: row;
	gap: 0.3rem;
    }
`

const ProgressBar = ({width}) => (
    <div className='progress-bar'>
	<div className='progress-bar_fill' style={{width: `${width}%`}}></div>
    </div>
)

const ListItem = ({name, pid, percentage}) => (
    <div className='list_item'>
	<div>{name}</div>
	<div>[{pid}]</div>
	<div>{percentage}%</div>
    </div>
)

export const render = () => (
    <main className='content'>
	<div>
	    <div>CPU — 30C</div>
	    <ProgressBar width={30}/>
	    <div className='list'>
		<ListItem name='CalendarWidgetExtension' pid={699} percentage={5}/>
		<ListItem name='CalendarWidgetExtension' pid={699} percentage={5}/>
		<ListItem name='CalendarWidgetExtension' pid={699} percentage={5}/>
	    </div>
	</div>
	<div>
	    <div>RAM — 9.66 of 16 — 0 swap</div>
	    <ProgressBar width={53}/>
	    <div className='list'>
		<ListItem name='CalendarWidgetExtension' pid={699} percentage={5}/>
		<ListItem name='CalendarWidgetExtension' pid={699} percentage={5}/>
		<ListItem name='CalendarWidgetExtension' pid={699} percentage={5}/>
	    </div>
	</div>
	<div>
	    <div>GPU — 52C</div>
	    <ProgressBar width={12.5}/>
	    <div className='list'>
		<ListItem name='CalendarWidgetExtension' pid={699} percentage={5}/>
		<ListItem name='CalendarWidgetExtension' pid={699} percentage={5}/>
		<ListItem name='CalendarWidgetExtension' pid={699} percentage={5}/>
	    </div>
	</div>
	<div>disk — reads/s 5 — writes/s 2</div>
	<div>network</div>
	<div>energy</div>
    </main>
)
