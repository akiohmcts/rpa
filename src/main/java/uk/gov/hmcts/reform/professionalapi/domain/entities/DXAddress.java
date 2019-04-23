package uk.gov.hmcts.reform.professionalapi.domain.entities;

import static javax.persistence.GenerationType.AUTO;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.NoArgsConstructor;

@Entity(name = "dx_address")
@NoArgsConstructor
public class DXAddress {

	@Id
	@GeneratedValue(strategy = AUTO)
	private UUID id;

	@Column(name = "DX_NUMBER", length = 13)
	private String dxNumber;

	@Column(name = "DX_EXCHANGE", length = 20)
	private String dxExchange;

	@ManyToOne
	@JoinColumn(name = "CONTACT_INFORMATION_ID")
	private ContactInformation contactInformation;

	public DXAddress(String dxNumber, String dxExchange) {
		this.dxNumber = dxNumber;
		this.dxExchange = dxExchange;
	}

	public UUID getId() {
		return id;
	}

	public String getDxNumber() {
		return dxNumber;
	}

	public String getDxExchange() {
		return dxExchange;
	}
}
