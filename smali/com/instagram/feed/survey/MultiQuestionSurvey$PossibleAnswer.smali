.class public Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;
.super Ljava/lang/Object;
.source "MultiQuestionSurvey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 376
    new-instance v0, Lcom/instagram/feed/survey/b;

    invoke-direct {v0}, Lcom/instagram/feed/survey/b;-><init>()V

    sput-object v0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->b:Ljava/lang/String;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->a:Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->c:I

    .line 374
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->d:Z

    .line 356
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->c:I

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->c:I

    .line 348
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->d:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    iget v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    return-void
.end method
