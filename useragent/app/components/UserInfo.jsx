import '../styles/UserInfo.css';

const UserInfo = ({ identity }) => {
  const { browser_family, client, device, os, os_family } = identity;

  return (
    <div className="user-info">
      <section className="browser-info centered">
        <h3><u>Browser</u></h3>
        <h4>Family: {browser_family}</h4>
        <h4>Name: {client.name}</h4>
        <h4>Engine: {client.engine}</h4>
        <h4>Version: {client.version}</h4>
      </section>

      <section className="device-info centered">
        <h3><u>Device</u></h3>
        <h4>Brand: {device.brand}</h4>
        <h4>Model #: {device.model}</h4>
        <h4>Type: {device.type}</h4>
      </section>

      <section className="os-info centered">
        <h3><u>Operating System</u></h3>
        <h4>Family: {os_family}</h4>
        <h4>Name: {os.name}</h4>
        <h4>Version: {os.version}</h4>
      </section>
    </div>
  );
};

export default UserInfo;
