.class final Lcom/instagram/feed/survey/c;
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
        "Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;
    .locals 2
    .parameter

    .prologue
    .line 289
    new-instance v0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method private static a(I)[Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;
    .locals 1
    .parameter

    .prologue
    .line 293
    new-array v0, p0, [Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 287
    invoke-static {p1}, Lcom/instagram/feed/survey/c;->a(Landroid/os/Parcel;)Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 287
    invoke-static {p1}, Lcom/instagram/feed/survey/c;->a(I)[Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;

    move-result-object v0

    return-object v0
.end method
