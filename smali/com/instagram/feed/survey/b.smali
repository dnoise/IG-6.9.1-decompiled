.class final Lcom/instagram/feed/survey/b;
.super Ljava/lang/Object;
.source "MultiQuestionSurvey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;
    .locals 2
    .parameter

    .prologue
    .line 379
    new-instance v0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method private static a(I)[Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;
    .locals 1
    .parameter

    .prologue
    .line 383
    new-array v0, p0, [Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 377
    invoke-static {p1}, Lcom/instagram/feed/survey/b;->a(Landroid/os/Parcel;)Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 377
    invoke-static {p1}, Lcom/instagram/feed/survey/b;->a(I)[Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;

    move-result-object v0

    return-object v0
.end method
