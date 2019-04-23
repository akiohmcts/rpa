package uk.gov.hmcts.reform.professionalapi.domain.entities;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;

public class DXAddressTest {

	@Test
	public void creates_dx_address_correctly() {

		DXAddress dxAddress = new DXAddress(null, "some-number", "some-exchange");

		assertThat(dxAddress.getId()).isNull();
		assertThat(dxAddress.getDxNumber()).isEqualTo("some-number");
		assertThat(dxAddress.getDxExchange()).isEqualTo("some-exchange");
	}

}
