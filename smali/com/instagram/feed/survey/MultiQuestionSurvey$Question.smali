.class public Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;
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
            "Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/instagram/feed/survey/d;

.field d:I

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/instagram/feed/survey/c;

    invoke-direct {v0}, Lcom/instagram/feed/survey/c;-><init>()V

    sput-object v0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->a:Ljava/lang/String;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->e:Ljava/util/List;

    .line 282
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->e:Ljava/util/List;

    sget-object v1, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->d:I

    .line 284
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->e:Ljava/util/List;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->d:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->d:I

    .line 248
    return-void
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->c:Lcom/instagram/feed/survey/d;

    sget-object v1, Lcom/instagram/feed/survey/d;->b:Lcom/instagram/feed/survey/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 271
    iget v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    return-void
.end method
