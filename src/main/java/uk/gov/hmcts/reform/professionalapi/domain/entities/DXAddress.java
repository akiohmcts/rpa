package uk.gov.hmcts.reform.professionalapi.domain.entities;

import static javax.persistence.GenerationType.AUTO;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.NoArgsConstructor;

@Entity(name = "dx_address")
@NoArgsConstructor
public class DXAddress {

	//waiting for Data Model
	//will change this depending on the link
	//between this entity and contact information
	@Id
	@GeneratedValue(strategy = AUTO)
	private UUID id;

	@Column(name = "DX_NUMBER", length = 13)
	private String dxNumber;

	@Column(name = "DX_EXCHANGE", length = 20)
	private String dxExchange;

	public DXAddress(UUID id, String dxNumber, String dxExchange) {

		this.id = id;
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
