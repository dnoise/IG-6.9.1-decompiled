.class final Lcom/instagram/feed/survey/a;
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
        "Lcom/instagram/feed/survey/MultiQuestionSurvey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/instagram/feed/survey/MultiQuestionSurvey;
    .locals 2
    .parameter

    .prologue
    .line 149
    new-instance v0, Lcom/instagram/feed/survey/MultiQuestionSurvey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/feed/survey/MultiQuestionSurvey;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method private static a(I)[Lcom/instagram/feed/survey/MultiQuestionSurvey;
    .locals 1
    .parameter

    .prologue
    .line 153
    new-array v0, p0, [Lcom/instagram/feed/survey/MultiQuestionSurvey;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    invoke-static {p1}, Lcom/instagram/feed/survey/a;->a(Landroid/os/Parcel;)Lcom/instagram/feed/survey/MultiQuestionSurvey;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    invoke-static {p1}, Lcom/instagram/feed/survey/a;->a(I)[Lcom/instagram/feed/survey/MultiQuestionSurvey;

    move-result-object v0

    return-object v0
.end method
