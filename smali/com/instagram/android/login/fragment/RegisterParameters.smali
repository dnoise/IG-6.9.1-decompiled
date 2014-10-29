.class public Lcom/instagram/android/login/fragment/RegisterParameters;
.super Ljava/lang/Object;
.source "RegisterParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/android/login/fragment/RegisterParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/instagram/android/login/fragment/by;

    invoke-direct {v0}, Lcom/instagram/android/login/fragment/by;-><init>()V

    sput-object v0, Lcom/instagram/android/login/fragment/RegisterParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->a:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->b:Ljava/util/List;

    .line 63
    iput-object v1, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->c:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->d:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "email"
    .parameter
    .parameter "name"
    .parameter "phone"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, usernameSuggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->a:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->b:Ljava/util/List;

    .line 56
    iput-object p3, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->c:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->d:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic a(Landroid/os/Parcel;)Lcom/instagram/android/login/fragment/RegisterParameters;
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-static {p0}, Lcom/instagram/android/login/fragment/RegisterParameters;->b(Landroid/os/Parcel;)Lcom/instagram/android/login/fragment/RegisterParameters;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/os/Parcel;)Lcom/instagram/android/login/fragment/RegisterParameters;
    .locals 5
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 28
    new-instance v4, Lcom/instagram/android/login/fragment/RegisterParameters;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/instagram/android/login/fragment/RegisterParameters;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 45
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return-void
.end method
