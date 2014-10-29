.class Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;
.super Ljava/lang/Object;
.source "ReportMediaUtil.java"

# interfaces
.implements Lcom/instagram/simplewebview/SimpleWebViewFragment$DismissalDelegate;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/instagram/android/util/e;

    invoke-direct {v0}, Lcom/instagram/android/util/e;-><init>()V

    sput-object v0, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;->a:Ljava/lang/String;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaId"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;->a:Ljava/lang/String;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/util/List;Lcom/instagram/user/c/a;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;",
            "Lcom/instagram/user/c/a;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 85
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 86
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/model/people/PeopleTag;

    .line 88
    invoke-virtual {v0}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 90
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/Fragment;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 73
    const-string v0, "tag-removed"

    const-string v1, "action"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    .line 78
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->W()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->V()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;->a(Ljava/util/List;Lcom/instagram/user/c/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->z()V

    .line 82
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return-void
.end method
