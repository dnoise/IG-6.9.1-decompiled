.class public Lcom/instagram/feed/survey/MultiQuestionSurvey;
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
            "Lcom/instagram/feed/survey/MultiQuestionSurvey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;",
            ">;"
        }
    .end annotation
.end field

.field f:Z

.field g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/instagram/feed/survey/a;

    invoke-direct {v0}, Lcom/instagram/feed/survey/a;-><init>()V

    sput-object v0, Lcom/instagram/feed/survey/MultiQuestionSurvey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget v0, Lcom/instagram/feed/survey/aj;->a:I

    iput v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey;->h:I

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget v0, Lcom/instagram/feed/survey/aj;->a:I

    iput v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey;->h:I

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey;->e:Ljava/util/List;

    .line 143
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey;->e:Ljava/util/List;

    sget-object v1, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/instagram/feed/survey/MultiQuestionSurvey;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey;->e:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey;->h:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey;->g:Z

    return v0
.end method

.method final g()Lcom/instagram/feed/survey/MultiQuestionSurvey;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget v0, Lcom/instagram/feed/survey/aj;->a:I

    iput v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey;->h:I

    .line 123
    :goto_0
    return-object p0

    .line 121
    :cond_0
    sget v0, Lcom/instagram/feed/survey/aj;->b:I

    iput v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey;->h:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 134
    return-void
.end method
