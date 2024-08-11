package com.bean;

public class QuizBean {

	private Integer quizId;
	private String title;
	private Integer totalQuestion;
	private Integer perQuestionPoint;
	private Boolean negative;
	private Float minusPoint;
	private String startDate;
	private String endDate;
	private Boolean active;

	public Integer getQuizId() {
		return quizId;
	}

	public void setQuizId(Integer quizId) {
		this.quizId = quizId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getTotalQuestion() {
		return totalQuestion;
	}

	public void setTotalQuestion(Integer totalQuestion) {
		this.totalQuestion = totalQuestion;
	}

	public Integer getPerQuestionPoint() {
		return perQuestionPoint;
	}

	public void setPerQuestionPoint(Integer perQuestionPoint) {
		this.perQuestionPoint = perQuestionPoint;
	}

	public Boolean getNegative() {
		return negative;
	}

	public void setNegative(Boolean negative) {
		this.negative = negative;
	}

	public Float getMinusPoint() {
		return minusPoint;
	}

	public void setMinusPoint(Float minusPoint) {
		this.minusPoint = minusPoint;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

}
