import { Workspace } from './lib/workspace.jsx';
import * as Icons from './lib/icons.jsx';

export const command = 'whoami';
export const refreshFrequency = false;
export const className=`
    box-sizing: border-box;

    width: calc(100vw - 0.5rem);
    height: content;
    margin-top: 0.25rem;
    margin-left: 0.25rem;
    margin-right: 0.25rem;

    font-family: 'Fira Code';
    font-size: 0.8rem;

    .content {
	background-color: #263238;
	color: white;
	border-radius: .1rem;

	padding-top: 0.3rem;
	padding-bottom: 0.3rem;

	display: grid;
	place-content: center;
    }

    .workspaces {
	display: flex;
	flex-direction: row;
	gap: 0.5rem;
	justify-self: start;
    }
`
export const render = ({output}) => (
    <div className='content'>
	<div className='workspaces'>

	    <Workspace active={true} name={'shell'} number={2}>
		<Icons.Default/>
		<Icons.Desktop/>
		<Icons.Finder/>
	    </Workspace>

	    <Workspace name={'dev'} number={2}>
		<Icons.Vim/>
	    </Workspace>

	    <Workspace name={'spec'}>
		<Icons.Figma/>
	    </Workspace>

	    <Workspace name={'docs'} number={2}>
		<Icons.GoogleChrome/>
		<Icons.Firefox/>
		<Icons.FirefoxDeveloperEdition/>
		<Icons.TorBrowser/>
	    </Workspace>

	    <Workspace name={'tools'} number={2}>
		<Icons.QuteBrowser/>
		<Icons.Insomnia/>
	    </Workspace>

	    <Workspace name={'comms'} number={2}>
		<Icons.Discord/>
		<Icons.Telegram/>
		<Icons.Slack/>
	    </Workspace>

	    <Workspace name={'git'} number={2}>
		<Icons.GitHub/>
		<Icons.Terminal/>
	    </Workspace>

	    <Workspace name={'music'} number={9}>
		<Icons.VLC/>
		<Icons.Spotify/>
		<Icons.Music/>
	    </Workspace>
	</div>
    </div>
)
